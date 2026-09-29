"""Map the import stubs of a Vita PRX (converted with self2elf.py) to function names
using the NID database from https://github.com/vitasdk/vita-headers (db/360/*.yml).

usage: python3 vita_imports.py il2CppAssemblies.elf <vita-headers>/db/360 stubs.json
"""
import glob, json, re, struct, sys

elf_path, db_dir, out = sys.argv[1:4]
nid2name = {}
for f in glob.glob(db_dir.rstrip('/') + '/*.yml'):
    for m in re.finditer(r'^\s+(\w+):\s*(0x[0-9A-Fa-f]{8})\s*$', open(f).read(), re.M):
        nid2name.setdefault(int(m.group(2), 16), m.group(1))

d = open(elf_path, 'rb').read()
ph = [struct.unpack_from('<8I', d, 52 + i * 32) for i in range(struct.unpack_from('<H', d, 44)[0])]
def va2off(va):
    for p in ph:
        if p[0] == 1 and p[2] <= va < p[2] + p[4]:
            return va - p[2] + p[1]
def r32(va): return struct.unpack_from('<I', d, va2off(va))[0]
def cstr(va):
    o = va2off(va); return d[o:d.index(b'\0', o)].decode('latin1')

# SceModuleInfo lives at e_entry (offset into the first segment)
text = ph[0][2]
mi = va2off(text + struct.unpack_from('<I', d, 24)[0])
imp_top, imp_end = struct.unpack_from('<II', d, mi + 0x2c)[0:2]
stubs = {}
pos = text + imp_top
while pos < text + imp_end:
    size = struct.unpack_from('<H', d, va2off(pos))[0]
    if size == 0x34:
        f = struct.unpack_from('<HHHHHHIIIIIIIIII', d, va2off(pos))
        nfunc, libname, funcnids, funcentries = f[3], f[8], f[10], f[11]
    else:
        f = struct.unpack_from('<HHHHHHIIIIII', d, va2off(pos))
        nfunc, libname, funcnids, funcentries = f[3], f[7], f[8], f[9]
    lib = cstr(libname)
    for i in range(nfunc):
        nid = r32(funcnids + i * 4)
        stubs[hex(r32(funcentries + i * 4))] = nid2name.get(nid, f'{lib}_{nid:08x}')
    pos += size
json.dump(stubs, open(out, 'w'), indent=0)
print(len(stubs), 'import stubs ->', out)
