# Herramientas de análisis

Scripts usados para abrir el build de PS Vita (`game - Copy/`). Todo corre en Linux con Python 3.11 y .NET 8.

| Script | Qué hace |
|---|---|
| `self2elf.py` | Convierte un SELF/SPRX de Vita *fake-signed* (sin cifrar) en un ELF ARM normal y le aplica las relocaciones SCE a la dirección base preferida (`0x81000000`). Así Il2CppDumper, capstone, Ghidra, etc. lo pueden leer. |
| `vita_imports.py` | Pone nombre a los *stubs* de importación (libc, libm, kernel...) usando la base de datos de NIDs de [vita-headers](https://github.com/vitasdk/vita-headers). |
| `annotate.py` | Desensambla métodos IL2CPP (Thumb-2) y los anota con nombres de métodos llamados, *string literals*, *TypeInfo* y accesos a campos de `this`. |
| `dump_scenes.py` | Vuelca la jerarquía de cada escena (GameObjects y componentes) y los valores serializados de los scripts (lo que se ve en el Inspector). |

## Pasos para reproducir

```bash
pip install UnityPy TypeTreeGeneratorAPI capstone
GAME="game - Copy"
WORK=/tmp/work; mkdir -p $WORK

# 1) SELF -> ELF (código del juego = il2CppAssemblies.suprx, motor = eboot.bin)
python3 tools/self2elf.py "$GAME/Media/Modules/il2CppAssemblies.suprx" $WORK/il2CppAssemblies.elf

# 2) Il2CppDumper (https://github.com/Perfare/Il2CppDumper, compilado con dotnet 8).
#    En Vita la sección .rodata está dentro del segmento ejecutable, así que hay que añadir
#    un alias de solo lectura del segmento 0 para que el buscador de CodeRegistration lo vea:
python3 - <<'EOF'
import struct
p='/tmp/work/il2CppAssemblies.elf'; d=bytearray(open(p,'rb').read())
n=struct.unpack_from('<H',d,44)[0]; ph=list(struct.unpack_from('<8I',d,52))
ph[6]=4; struct.pack_into('<8I',d,52+n*32,*ph); struct.pack_into('<H',d,44,n+1)
open('/tmp/work/il2CppAssemblies_alias.elf','wb').write(d)
EOF
dotnet Il2CppDumper.dll $WORK/il2CppAssemblies_alias.elf "$GAME/Media/Metadata/global-metadata.dat" $WORK/dump
#   -> CodeRegistration 0x814f7d10, MetadataRegistration 0x814f7d4c
#   -> dump.cs, il2cpp.h, script.json, DummyDll/

# 3) Nombres de imports y desensamblado anotado
python3 tools/vita_imports.py $WORK/il2CppAssemblies.elf vita-headers/db/360 $WORK/stubs.json
ANNOTATE_WORK=$WORK python3 tools/annotate.py controller > controller.asm

# 4) Escenas y datos de los scripts
python3 tools/dump_scenes.py "$GAME/Media" $WORK/dump/DummyDll analysis/scenes
```

Nota: Il2CppDumper no puede mostrar los *field offsets* (salen `0xFFFFFFFF`) porque el compilador de Sony
(SNC) inicializa esas tablas en tiempo de ejecución. `annotate.py` los recalcula a partir de `il2cpp.h`
(ver `analysis/il2cpp/field_layouts.txt`).

## Scripts para Windows (se corren en la PC del usuario)

| Script | Qué hace |
|---|---|
| `exportar_con_assetripper.ps1` | Primer export con AssetRipper. AssetRipper no reconoce el formato IL2CPP de Vita, así que los scripts salen vacíos y las escenas pierden sus datos. |
| `rehacer_export.ps1` | Export bueno: copia el juego a `export\input`, añade `Media\Managed\*.dll` (las DLL limpias de `analysis/il2cpp/ManagedDlls`) para que AssetRipper lo trate como Mono y conserve los datos de los scripts, mete los scripts reconstruidos manteniendo sus `.meta`, convierte el audio HE-VAG a `.wav` con vgmstream y sube solo el informe de texto. |
| `reporte_export.ps1` | Resume el proyecto exportado en `analysis/export_report.txt` (solo nombres, contadores y líneas del log). |
| `recuperar_export_y_subir_informe.ps1` | Recupera `export\` si quedó dentro de un commit local de `main` y deja `main` igual que en GitHub. |

`strip_dummy_attrs/` es el programa (Mono.Cecil) que generó `analysis/il2cpp/ManagedDlls`: quita los
atributos `Il2CppDummyDll.*` que añade Il2CppDumper, para que las DLL parezcan ensamblados normales.
Compilar con `dotnet run -p:CecilPath=<ruta a Mono.Cecil.dll> -- <DummyDll> <salida>`.
