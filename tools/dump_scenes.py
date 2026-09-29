"""Dump scene hierarchies (GameObjects, components) and serialized script data
from the Vita build, using type trees generated from Il2CppDumper's DummyDll.

usage: python3 dump_scenes.py <game>/Media <il2cppdumper-out>/DummyDll <out-dir>
needs: pip install UnityPy TypeTreeGeneratorAPI
"""
import UnityPy, json, sys, os
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator

media, dummy, out = sys.argv[1], sys.argv[2], sys.argv[3]
env = UnityPy.load(media)
gen = TypeTreeGenerator('2018.2.0b4')
gen.load_local_dll_folder(dummy)

def clean(v, depth=0):
    if depth > 12: return '...'
    if isinstance(v, dict):
        if set(v.keys()) >= {'m_FileID', 'm_PathID'}:
            return None if v['m_PathID'] == 0 else f"PPtr(file={v['m_FileID']}, id={v['m_PathID']})"
        return {k: clean(x, depth + 1) for k, x in v.items()}
    if isinstance(v, list):
        if len(v) > 64 and all(isinstance(x, (int, float)) for x in v):
            return f'<{len(v)} numbers>'
        return [clean(x, depth + 1) for x in v]
    if isinstance(v, (bytes, bytearray)):
        return f'<{len(v)} bytes>'
    return v

sfiles = {os.path.basename(k).lower(): f for k, f in env.files.items() if hasattr(f, 'objects')}
def resolve(src, pp):
    fid, pid = pp.m_FileID, pp.m_PathID
    if pid == 0: return None
    if fid == 0: return src.objects.get(pid)
    ext = src.externals[fid - 1].path.rsplit('/', 1)[-1].lower()
    f = sfiles.get(ext)
    return f.objects.get(pid) if f else None
def script_of(o):
    mb = o.read(check_read=False)
    so = resolve(o.assets_file, mb.m_Script)
    return so.read() if so else None
for fname, f in env.files.items():
    if not hasattr(f, 'objects'): continue
    base = os.path.basename(fname)
    if base not in ('level0', 'level1', 'sharedassets0.assets', 'sharedassets1.assets'): continue
    objs = f.objects
    gos = {pid: o for pid, o in objs.items() if o.type.name == 'GameObject'}
    trs = {}
    goinfo = {}
    for pid, o in gos.items():
        g = o.read()
        comps = []
        for c in g.m_Component:
            cp = c.component if hasattr(c, 'component') else c[1] if isinstance(c, tuple) else c
            try:
                co = resolve(f, cp)
            except Exception:
                comps.append(('?', cp.m_PathID, None)); continue
            tname = co.type.name
            extra = None
            if tname == 'MonoBehaviour':
                try:
                    sc = script_of(co)
                    tname = f'Script:{sc.m_ClassName}'
                    full = (sc.m_Namespace + '.' if sc.m_Namespace else '') + sc.m_ClassName
                    tt = co.read_typetree(gen.get_nodes_up(sc.m_AssemblyName, full))
                    extra = {k: clean(v) for k, v in tt.items() if k not in ('m_GameObject', 'm_Enabled', 'm_Script', 'm_Name', 'm_EditorHideFlags', 'm_EditorClassIdentifier', 'm_ObjectHideFlags', 'm_CorrespondingSourceObject', 'm_PrefabInternal', 'm_PrefabInstance', 'm_PrefabAsset')}
                except Exception as e:
                    extra = {'<error>': str(e)[:200]}
            comps.append((tname, cp.m_PathID, extra))
            if tname in ('Transform', 'RectTransform'):
                tr = co.read()
                trs[cp.m_PathID] = (pid, [ch.m_PathID for ch in tr.m_Children], tr.m_Father.m_PathID,
                                    tuple(round(x, 3) for x in (tr.m_LocalPosition.x, tr.m_LocalPosition.y, tr.m_LocalPosition.z)))
        goinfo[pid] = dict(name=g.m_Name, active=g.m_IsActive, layer=g.m_Layer, tag=g.m_Tag, comps=comps)
    # roots
    roots = [t for t, v in trs.items() if v[2] == 0]
    lines = []
    scripts = []
    def walk(tid, depth):
        gpid, children, father, pos = trs[tid]
        gi = goinfo[gpid]
        cnames = [c[0] for c in gi['comps'] if c[0] not in ('Transform', 'RectTransform')]
        lines.append('  ' * depth + f"- {gi['name']}{'' if gi['active'] else ' (inactive)'}  pos={pos}  [{', '.join(cnames)}]")
        for c in gi['comps']:
            if c[0].startswith('Script:') and c[2]:
                scripts.append({'gameObject': gi['name'], 'pathID': c[1], 'script': c[0][7:], 'data': c[2]})
        for ch in children:
            if ch in trs: walk(ch, depth + 1)
    for r in roots:
        walk(r, 0)
    if lines:
        open(os.path.join(out, base + '_hierarchy.txt'), 'w').write('\n'.join(lines) + '\n')
    if scripts:
        json.dump(scripts, open(os.path.join(out, base + '_scripts.json'), 'w'), indent=1, ensure_ascii=False, default=str)
    print(base, 'gameobjects', len(gos), 'roots', len(roots), 'scripts', len(scripts))
