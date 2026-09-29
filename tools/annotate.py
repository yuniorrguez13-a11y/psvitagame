"""Symbolised Thumb-2 disassembly of IL2CPP methods (PS Vita build).
Annotates calls, metadata-usage slots, string literals and `this` field accesses.

usage: ANNOTATE_WORK=<dir> python3 annotate.py controller cameraSC ... > out.asm
<dir> must contain: il2CppAssemblies.elf (from self2elf.py), dump/script.json and
dump/il2cpp.h (from Il2CppDumper), stubs.json (from vita_imports.py, optional).
needs: pip install capstone
"""
import json, os, re, struct, sys, bisect
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB
from capstone.arm import ARM_OP_IMM, ARM_OP_MEM, ARM_OP_REG

W = os.environ.get('ANNOTATE_WORK', '.').rstrip('/') + '/'
elf = open(W + 'il2CppAssemblies.elf', 'rb').read()
ph = [struct.unpack_from('<8I', elf, 52 + i * 32) for i in range(struct.unpack_from('<H', elf, 44)[0])]
def va2off(va):
    for p in ph:
        if p[0] == 1 and p[2] <= va < p[2] + p[4]:
            return va - p[2] + p[1]
def r32(va):
    o = va2off(va); return None if o is None else struct.unpack_from('<I', elf, o)[0]
def cstr(va):
    o = va2off(va)
    if o is None: return None
    e = elf.find(b'\0', o, o + 300)
    if e <= o: return None
    s = elf[o:e]
    if all(32 <= c < 127 for c in s) and len(s) >= 3: return s.decode()
    return None

sj = json.load(open(W + 'dump/script.json'))
meth = {}
for m in sj['ScriptMethod']:
    meth.setdefault(m['Address'] & ~1, m['Name'])
maddrs = sorted(meth)
# names for runtime helpers / out-of-line inlines identified by hand, plus import stubs (NID db)
callnames = {0x8128c344: 'il2cpp_runtime_class_init', 0x812845d4: 'il2cpp_codegen_initialize_method',
             0x812ab562: 'il2cpp_codegen_box', 0x812ab462: 'il2cpp_codegen_object_new',
             0x812792a0: 'il2cpp_class_from_type', 0x8127bb2a: 'il2cpp_class_init',
             0x8129f0aa: 'il2cpp_throw_NotSupportedException(iterator Reset)',
             0x8127d904: 'Vector3..ctor(ptr, x, y, z)', 0x812713e0: 'RaycastHit.get_point(ptr)',
             0x812712cc: 'RaycastHit.get_collider(ptr)', 0x813a3912: 'Vector3.get_magnitude(ptr)',
             0x813a4324: 'Vector3.get_normalized(ptr)', 0x812f378e: 'Quaternion.get_eulerAngles(ptr)'}
if os.path.exists(W + 'stubs.json'):
    callnames.update({int(k, 16): v for k, v in json.load(open(W + 'stubs.json')).items()})
slots = {}
for m in sj['ScriptMetadata']: slots[m['Address']] = m['Name']
for m in sj['ScriptMetadataMethod']: slots[m['Address']] = m['Name']
for m in sj['ScriptString']: slots[m['Address']] = 'str ' + json.dumps(m['Value'])

# ---------- field layouts from il2cpp.h
hdr = open(W + 'dump/il2cpp.h').read()
structs = {}
for mm in re.finditer(r'^struct (\w+)(?: : (\w+))? \{\n(.*?)^\};', hdr, re.S | re.M):
    structs[mm.group(1)] = (mm.group(2), [l.strip().rstrip(';') for l in mm.group(3).split('\n') if l.strip()])
prim = {'bool': (1, 1), 'uint8_t': (1, 1), 'int8_t': (1, 1), 'uint16_t': (2, 2), 'int16_t': (2, 2),
        'int32_t': (4, 4), 'uint32_t': (4, 4), 'float': (4, 4), 'int64_t': (8, 8), 'uint64_t': (8, 8),
        'double': (8, 8), 'intptr_t': (4, 4), 'uintptr_t': (4, 4), 'Il2CppChar': (2, 2)}
_cache = {}
def layout(name):
    """returns (size, align, [(offset, fieldname, type)]) of a *_Fields struct (without object header)"""
    if name in _cache: return _cache[name]
    base, lines = structs[name]
    fields = []; off = 0; al = 1
    if base:
        bs, ba, bf = layout(base); fields += bf; off = bs; al = max(al, ba)
    for l in lines:
        if l.endswith('fields') and ' fields' in l and not l.startswith('struct'):
            t = l.split()[0]; s, a, f = layout(t)
            off = (off + a - 1) // a * a
            fields += [(off + o, n, ty) for o, n, ty in f]; off += s; al = max(al, a); continue
        mt = re.match(r'(struct )?([\w]+)(\*?) (\w+)$', l)
        if not mt: continue
        isstruct, t, ptr, n = mt.groups()
        if ptr or t.endswith('*'): s = a = 4
        elif t in prim: s, a = prim[t]
        elif isstruct and t.endswith('_o'):
            inner = structs.get(t)
            if inner and inner[1] and inner[1][0].endswith('fields'):
                s, a, _ = layout(inner[1][0].split()[0])
            else: s = a = 4
        else: s = a = 4
        off = (off + a - 1) // a * a
        fields.append((off, n, t + ptr)); off += s; al = max(al, a)
    size = (off + al - 1) // al * al
    _cache[name] = (size, al, fields)
    return _cache[name]

def obj_fields(cls_c_name):
    s, a, f = layout(cls_c_name + '_Fields')
    return {8 + o: (n, t) for o, n, t in f}   # 8 = klass + monitor

def c_name(managed):
    return managed.replace('.', '_').replace('<', '_').replace('>', '_').replace('$', '_')

md = Cs(CS_ARCH_ARM, CS_MODE_THUMB); md.detail = True

def disasm(addr, name, this_cls=None, out=None):
    i = bisect.bisect_right(maddrs, addr)
    end = maddrs[i] if i < len(maddrs) else addr + 0x400
    end = min(end, addr + 0x4000)
    code = elf[va2off(addr):va2off(addr) + (end - addr)]
    fmap = obj_fields(c_name(this_cls)) if this_cls else {}
    thisregs = {'r0'} if this_cls else set()
    pend = {}  # reg -> partial movw value
    lines = [f'; ==== {name}  @ {addr:#x} .. {end:#x}']
    for ins in md.disasm(code, addr):
        ann = []
        ops = ins.operands
        m = ins.mnemonic
        if m.startswith('movw') and len(ops) == 2 and ops[1].type == ARM_OP_IMM:
            pend[ins.reg_name(ops[0].reg)] = ops[1].imm
        elif m.startswith('movt') and len(ops) == 2 and ops[1].type == ARM_OP_IMM:
            r = ins.reg_name(ops[0].reg)
            if r in pend:
                v = (ops[1].imm << 16) | pend.pop(r)
                if v in slots: ann.append(slots[v])
                elif (v & ~1) in meth: ann.append('&' + meth[v & ~1])
                else:
                    s = cstr(v)
                    ann.append(f'= {v:#x}' + (f' "{s}"' if s else ''))
        elif m.startswith('ldr') and len(ops) == 2 and ops[1].type == ARM_OP_MEM and ins.reg_name(ops[1].mem.base) == 'pc':
            a = ((ins.address + 4) & ~3) + ops[1].mem.disp
            v = r32(a)
            if v is not None:
                if v in slots: ann.append(slots[v])
                elif (v & ~1) in meth: ann.append('&' + meth[v & ~1])
                else:
                    s = cstr(v)
                    ann.append(f'= {v:#x}' + (f' "{s}"' if s else f' ({struct.unpack("<f", struct.pack("<I", v))[0]:.4g}f)'))
        if m in ('bl', 'blx', 'b', 'b.w') and ops and ops[0].type == ARM_OP_IMM:
            t = ops[0].imm & 0xffffffff
            if (t & ~1) in meth: ann.append('-> ' + meth[t & ~1])
            elif t in callnames or (t & ~1) in callnames: ann.append('-> ' + callnames.get(t, callnames.get(t & ~1)))
            elif m in ('bl', 'blx'): ann.append(f'-> sub_{t:x}')
        if (m.startswith('ldr') or m.startswith('str') or m.startswith('vldr') or m.startswith('vstr')) and ops:
            mem = [o for o in ops if o.type == ARM_OP_MEM]
            if mem and ins.reg_name(mem[0].mem.base) in thisregs:
                off = mem[0].mem.disp
                if off in fmap: ann.append(f'this.{fmap[off][0]}')
                else:
                    # inside a value-type field?
                    cand = [(o, n) for o, (n, t) in fmap.items() if o < off]
                    if cand:
                        o, n = max(cand); ann.append(f'this.{n}+{off - o}')
        # track copies of `this`
        wr = None
        if ops and ops[0].type == ARM_OP_REG and not m.startswith(('str', 'cmp', 'cmn', 'tst', 'teq', 'vstr', 'push', 'pop', 'b', 'cbz', 'cbnz', 'it', 'vcmp', 'vpush', 'vpop')):
            wr = ins.reg_name(ops[0].reg)
        if wr:
            src = None
            if m in ('mov', 'movs') and len(ops) == 2 and ops[1].type == ARM_OP_REG:
                src = ins.reg_name(ops[1].reg)
            elif m in ('adds', 'add', 'add.w', 'adds.w') and len(ops) == 3 and ops[1].type == ARM_OP_REG and ops[2].type == ARM_OP_IMM and ops[2].imm == 0:
                src = ins.reg_name(ops[1].reg)
            if src is not None and src in thisregs: thisregs.add(wr)
            else: thisregs.discard(wr)
        if m in ('bl', 'blx'):
            for r in ('r0', 'r1', 'r2', 'r3', 'r12'): thisregs.discard(r)
        if m == 'pop' or m.startswith('ldm'):
            for o in ops:
                if o.type == ARM_OP_REG: thisregs.discard(ins.reg_name(o.reg))
        lines.append(f'{ins.address:08x}  {ins.mnemonic:8s} {ins.op_str:32s}' + ('  ; ' + ' | '.join(ann) if ann else ''))
    return '\n'.join(lines)

if __name__ == '__main__':
    targets = sys.argv[1:]
    for m in sj['ScriptMethod']:
        n = m['Name']; typ = n.split('$$')[0]
        if any(typ == t or typ.startswith(t + '.') for t in targets):
            cls = typ if '<' not in typ else typ
            try:
                print(disasm(m['Address'] & ~1, n, typ))
            except KeyError:
                print(disasm(m['Address'] & ~1, n, None))
            print()
