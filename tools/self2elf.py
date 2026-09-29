"""Convert a PS Vita fake-signed SELF/SPRX (uncompressed, unencrypted) into a plain
ARM ELF32 with SCE relocations pre-applied at the preferred load address, so that
generic tools (Il2CppDumper, Ghidra, capstone...) can analyse it."""
import struct, sys, zlib

def u32(b, o): return struct.unpack_from('<I', b, o)[0]

def main(src, dst):
    d = open(src, 'rb').read()
    (magic, ver, sdk, htype, metaoff, hlen, elfsz, selfsz, unk, selfoff, appoff,
     elfoff, phoff, shoff, segoff, sceveroff, ctrloff, ctrlsz) = struct.unpack_from('<4sIHHIQQQQQQQQQQQQQ', d, 0)
    assert magic == b'SCE\0'
    eh = bytearray(d[elfoff:elfoff + 52])
    e_entry = u32(eh, 24)
    phnum = struct.unpack_from('<H', eh, 44)[0]
    phdrs, segs = [], []
    for i in range(phnum):
        p = list(struct.unpack_from('<8I', d, phoff + i * 32))
        so, sl, comp, enc = struct.unpack_from('<QQQQ', d, segoff + i * 32)
        raw = d[so:so + sl]
        if comp == 2:
            raw = zlib.decompress(raw)
        assert enc != 1, 'encrypted segment'
        phdrs.append(p); segs.append(bytearray(raw))
    # load segments into memory images
    load = [i for i, p in enumerate(phdrs) if p[0] == 1]
    mem = {i: bytearray(phdrs[i][5]) for i in load}
    for i in load:
        mem[i][:len(segs[i])] = segs[i]
    base = {i: phdrs[i][2] for i in load}
    size = {i: phdrs[i][5] for i in load}

    def seg_of_value(v):
        for i in load:
            if base[i] <= v < base[i] + size[i]:
                return i
        return None

    def rd(seg, off): return u32(mem[seg], off)
    def wr(seg, off, v): struct.pack_into('<I', mem[seg], off, v & 0xffffffff)

    stats = {}
    def reloc(seg, off, code, s, a):
        P = base[seg] + off
        stats[code] = stats.get(code, 0) + 1
        if code in (0, 40, 255):
            return
        if code in (2, 38):
            wr(seg, off, s + a)
        elif code in (3, 41):
            wr(seg, off, s + a - P)
        elif code == 42:
            wr(seg, off, (s + a - P) & 0x7fffffff)
        elif code == 10:  # THM_CALL
            v = (s + a - P) & 0xffffffff
            up = struct.unpack_from('<H', mem[seg], off)[0]
            lo = struct.unpack_from('<H', mem[seg], off + 2)[0]
            sign = (v >> 24) & 1
            lo = (lo & ~0x7ff) | ((v >> 1) & 0x7ff)
            up = (up & ~0x3ff) | ((v >> 12) & 0x3ff)
            up = (up & ~0x400) | (sign << 10)
            j2 = sign ^ (((~v) >> 22) & 1)
            j1 = sign ^ (((~v) >> 23) & 1)
            lo = (lo & ~(1 << 11)) | (j2 << 11)
            lo = (lo & ~(1 << 13)) | (j1 << 13)
            struct.pack_into('<HH', mem[seg], off, up, lo)
        elif code in (28, 29):
            ins = rd(seg, off)
            wr(seg, off, (ins & 0xff000000) | (((s + a - P) >> 2) & 0xffffff))
        elif code in (43, 44):
            v = (s + a) & 0xffffffff
            if code == 44: v >>= 16
            v &= 0xffff
            ins = rd(seg, off)
            ins = (ins & ~0xfff) | (v & 0xfff)
            ins = (ins & ~(0xf << 16)) | ((v >> 12) << 16)
            wr(seg, off, ins)
        elif code in (47, 48):
            v = (s + a) & 0xffffffff
            if code == 48: v >>= 16
            v &= 0xffff
            up = struct.unpack_from('<H', mem[seg], off)[0]
            lo = struct.unpack_from('<H', mem[seg], off + 2)[0]
            lo = (lo & ~0xff) | (v & 0xff)
            lo = (lo & ~(0x7 << 12)) | (((v >> 8) & 7) << 12)
            up = (up & ~(1 << 10)) | (((v >> 11) & 1) << 10)
            up = (up & ~0xf) | ((v >> 12) & 0xf)
            struct.pack_into('<HH', mem[seg], off, up, lo)
        else:
            raise ValueError('unhandled reloc code %d' % code)

    def segbase(i): return 0 if i == 0xf else base[i]

    fmts = {}
    for ri, p in enumerate(phdrs):
        if p[0] != 0x60000000:
            continue
        r = segs[ri]; pos = 0
        g_addr = g_off = g_patch = g_s = g_a = g_t = g_t2 = 0
        while pos < len(r):
            w0 = u32(r, pos); f = w0 & 0xf
            fmts[f] = fmts.get(f, 0) + 1
            if f == 0:
                w1, w2 = u32(r, pos + 4), u32(r, pos + 8)
                symseg = (w0 >> 4) & 0xf; code = (w0 >> 8) & 0xff; patch = (w0 >> 16) & 0xf
                code2 = (w0 >> 20) & 0xff; dist2 = (w0 >> 28) & 0xf
                s = segbase(symseg); a = w1; off = w2
                reloc(patch, off, code, s, a)
                if code2: reloc(patch, off + dist2 * 2, code2, s, a)
                g_addr, g_off, g_patch, g_s, g_a, g_t, g_t2 = base[patch], off, patch, s, a, code, code2
                pos += 12
            elif f == 1:
                w1 = u32(r, pos + 4)
                symseg = (w0 >> 4) & 0xf; code = (w0 >> 8) & 0xff; patch = (w0 >> 16) & 0xf
                off = ((w0 >> 20) & 0xfff) | ((w1 & 0x3ff) << 12); a = w1 >> 10
                s = segbase(symseg)
                reloc(patch, off, code, s, a)
                g_addr, g_off, g_patch, g_s, g_a, g_t, g_t2 = base[patch], off, patch, s, a, code, 0
                pos += 8
            elif f == 2:
                w1 = u32(r, pos + 4)
                symseg = (w0 >> 4) & 0xf; code = (w0 >> 8) & 0xff; off = w0 >> 16
                g_off += off; g_s = segbase(symseg); g_a = w1; g_t = code; g_t2 = 0
                reloc(g_patch, g_off, g_t, g_s, g_a)
                pos += 8
            elif f == 3:
                w1 = u32(r, pos + 4)
                symseg = (w0 >> 4) & 0xf; mode = (w0 >> 8) & 1; off = (w0 >> 9) & 0x3ffff; dist2 = w0 >> 27
                a = w1 & 0x3fffff
                g_t, g_t2 = (47, 48) if mode else (43, 44)
                g_off += off; g_s = segbase(symseg); g_a = a
                reloc(g_patch, g_off, g_t, g_s, g_a)
                reloc(g_patch, g_off + dist2, g_t2, g_s, g_a)
                pos += 8
            elif f == 4:
                off = (w0 >> 4) & 0x7fffff; dist2 = w0 >> 27
                g_off += off
                reloc(g_patch, g_off, g_t, g_s, g_a)
                reloc(g_patch, g_off + dist2, g_t2, g_s, g_a)
                pos += 4
            elif f == 5:
                d1 = (w0 >> 4) & 0x1ff; d2 = (w0 >> 13) & 0x1f; d3 = (w0 >> 18) & 0x1ff; d4 = w0 >> 27
                g_off += d1
                reloc(g_patch, g_off, g_t, g_s, g_a); reloc(g_patch, g_off + d2, g_t2, g_s, g_a)
                g_off += d3
                reloc(g_patch, g_off, g_t, g_s, g_a); reloc(g_patch, g_off + d4, g_t2, g_s, g_a)
                pos += 4
            elif f in (6, 7, 8, 9):
                # ABS32 where the original value is already a preferred-base address:
                # relocating at the preferred base is a no-op, just track offsets.
                if f == 6:
                    g_off += w0 >> 4
                    stats['abs32_inplace'] = stats.get('abs32_inplace', 0) + 1
                else:
                    bits, mask = {7: (7, 0x7f), 8: (4, 0xf), 9: (2, 0x3)}[f]
                    offs = w0 >> 4
                    while True:
                        g_off += (offs & mask) * 4
                        stats['abs32_inplace'] = stats.get('abs32_inplace', 0) + 1
                        offs >>= bits
                        if not offs: break
                g_t, g_t2 = 2, 0
                pos += 4
            else:
                raise ValueError('unknown reloc format %d at %x' % (f, pos))
    print('reloc formats:', fmts)
    print('reloc codes:', stats)

    # ---- write a plain ELF32: [ehdr][phdrs][seg0][seg1][dyn][shstrtab][shdrs]
    out = bytearray(0x1000)
    ph = []
    cur = 0x1000
    for i in load:
        p = phdrs[i]
        data = bytes(mem[i][:p[4]])  # file-backed part
        off = cur
        out[len(out):] = data
        cur += len(data)
        pad = (-cur) & 0xfff
        out[len(out):] = b'\0' * pad; cur += pad
        ph.append((1, off, p[2], p[2], p[4], p[5], p[6], 0x1000))
    dyn_off = cur
    out[len(out):] = b'\0' * 16; cur += 16
    ph.append((2, dyn_off, 0, 0, 16, 16, 6, 4))
    shstr = b'\0.text\0.data\0.shstrtab\0'
    shstr_off = cur
    out[len(out):] = shstr; cur += len(shstr)
    pad = (-cur) & 3; out[len(out):] = b'\0' * pad; cur += pad
    sh_off = cur
    t, dt = load[0], load[1]
    shdrs = [
        (0,) * 10,
        (1, 1, 6, phdrs[t][2], ph[0][1], phdrs[t][4], 0, 0, 16, 0),
        (7, 1, 3, phdrs[dt][2], ph[1][1], phdrs[dt][4], 0, 0, 64, 0),
        (13, 3, 0, 0, shstr_off, len(shstr), 0, 0, 1, 0),
    ]
    for s in shdrs:
        out[len(out):] = struct.pack('<10I', *s)
    ehdr = bytearray(b'\x7fELF\x01\x01\x01' + b'\0' * 9)
    ehdr += struct.pack('<HHIIIIIHHHHHH', 3, 40, 1, e_entry, 52, sh_off, 0x05000000, 52, 32, len(ph), 40, len(shdrs), 3)
    out[0:52] = ehdr
    for i, p in enumerate(ph):
        struct.pack_into('<8I', out, 52 + i * 32, *p)
    open(dst, 'wb').write(out)
    print('wrote', dst, len(out), 'bytes; segments:', [(hex(p[2]), hex(p[5])) for p in ph])

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
