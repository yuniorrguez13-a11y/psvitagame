// Removes Il2CppDumper's marker attributes (namespace Il2CppDummyDll) and the reference to
// Il2CppDummyDll.dll, so the dummy assemblies look like plain reference assemblies.
using System;
using System.IO;
using System.Linq;
using Mono.Cecil;

class P {
    static void Strip(Mono.Collections.Generic.Collection<CustomAttribute> attrs) {
        for (int i = attrs.Count - 1; i >= 0; i--)
            if (attrs[i].AttributeType.Namespace == "Il2CppDummyDll") attrs.RemoveAt(i);
    }
    static void Main(string[] a) {
        string src = a[0], dst = a[1];
        Directory.CreateDirectory(dst);
        var resolver = new DefaultAssemblyResolver(); resolver.AddSearchDirectory(src);
        foreach (var f in Directory.GetFiles(src, "*.dll")) {
            string name = Path.GetFileName(f);
            if (name == "Il2CppDummyDll.dll" || name == "Mono.Security.dll") continue;
            var asm = AssemblyDefinition.ReadAssembly(f, new ReaderParameters { AssemblyResolver = resolver });
            var mod = asm.MainModule;
            Strip(asm.CustomAttributes); Strip(mod.CustomAttributes);
            foreach (var t in mod.GetTypes()) {
                Strip(t.CustomAttributes);
                foreach (var m in t.Methods) { Strip(m.CustomAttributes); foreach (var p in m.Parameters) Strip(p.CustomAttributes); }
                foreach (var x in t.Fields) Strip(x.CustomAttributes);
                foreach (var x in t.Properties) Strip(x.CustomAttributes);
                foreach (var x in t.Events) Strip(x.CustomAttributes);
            }
            foreach (var r in mod.AssemblyReferences.Where(r => r.Name == "Il2CppDummyDll").ToList()) mod.AssemblyReferences.Remove(r);
            asm.Write(Path.Combine(dst, name));
            Console.WriteLine("ok " + name);
        }
    }
}
