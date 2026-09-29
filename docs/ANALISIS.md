# "Naruto Boruto" para PS Vita: qué hay dentro y cómo seguir desarrollándolo

## Resumen

- Es un **prototipo de juego de pelea 3D 1v1** hecho en **Unity 2018.2.0b4** (una beta) con el backend **IL2CPP**.
  Autor: `Gambikules`, versión `0.1`, TITLE_ID `NABO12345`.
- Tiene **2 escenas**: una pantalla de carga y una arena donde **Sarada (jugador) pelea contra otra Sarada (bot)**.
- El código propio del juego son **8 clases C#**. Ya están **reconstruidas y compilando** en `reconstructed/Assets/Scripts/`.
- **Sí se puede seguir desarrollando.** El camino más práctico es sacar un proyecto de Unity con AssetRipper,
  meterle los scripts reconstruidos y trabajar en PC. Volver a compilar para Vita es la parte difícil (ver abajo).
- **Ojo:** el código es del autor, pero **el personaje, sus animaciones, el escenario y los sonidos salen de juegos
  oficiales de Bandai Namco** (ver "Origen de los assets").

## Qué hay dentro del build

| Archivo | Qué es |
|---|---|
| `eboot.bin` | El motor de Unity para Vita (SELF sin cifrar, 40 MB) |
| `Media/Modules/il2CppAssemblies.suprx` | **El código del juego** ya compilado a ARM, más el runtime de IL2CPP |
| `Media/Metadata/global-metadata.dat` | Nombres de todas las clases, campos, métodos y textos (lo que permite "des-ofuscar") |
| `Media/level0`, `level1` | Las escenas `load.unity` y `1.unity` |
| `Media/sharedassets*.assets(.resS)` | Modelos, texturas, animaciones, audio, materiales, shaders |
| `sce_sys/` | Icono, fondo del LiveArea y `param.sfo` |

En C++/IL2CPP no existe el C# original dentro del juego, así que lo que se hizo fue:

1. Convertir el `.suprx` (formato de Sony) a un ELF normal aplicando sus relocaciones (`tools/self2elf.py`).
2. Pasar ese ELF y el `global-metadata.dat` por **Il2CppDumper**, que da todos los nombres y firmas
   (`analysis/il2cpp/`).
3. Generar un **desensamblado ARM anotado** de las 8 clases del juego (`analysis/asm/`), con nombres de funciones,
   textos y campos.
4. **Reconstruir el C#** método por método a partir de ese desensamblado. Después se hizo una segunda pasada
   independiente que compara cada método con el ensamblador y corrige lo que no coincide.
5. Leer las escenas con UnityPy: la jerarquía de objetos y los valores que tenía cada script en el Inspector
   (`analysis/scenes/`).

## Cómo funciona el juego (según el código reconstruido)

**Controles** (ejes definidos en el InputManager del juego):

| Botón | Acción |
|---|---|
| Stick izquierdo (`Horizontal`/`Vertical`) | Moverse (relativo a la cámara). Con guardia puesta, esquivar |
| Cuadrado (`Square`) | Combo de golpes (`PunchR` → `SideDoubleSlashing` → …) |
| Círculo (`Circle`) | Lanzar kunai teledirigidos |
| X (`Jump`) | Saltar / esquivar |
| R (`Rtrigger`, mantener) | Guardia |
| L (`Ltrigger`, mantener) | Cargar chakra |
| Start | Menú de opciones (pausa) |
| Select | Cambia al jugador 1 entre humano y bot (para ver pelear a la IA) |

**Reglas principales:**

- **Stats de Sarada**: vida 500, chakra 500, guardia 100, velocidad 5, salto 8, dash 10.
- **9 ataques** en una tabla editable desde el Inspector (nombre, desplazamiento, tipo de golpe, daño, fuerza y sonido):
  `PunchR` (5), `SideDoubleSlashing` (7+7), `TurnKick` (10), `JumpTurnKick` (6+12), `DoubleUppercut` (6+15),
  `Dash` (5), `Throw_JumpCross` (10), `TurnKickSpinKick` (7+15), `Ninjutsu_ShurikenSpringStorm` (con cámara animada).
- **Guardia**: resta el daño a la barra de guardia. Si llega a 0, hay *guard break*: la barra queda en -50 y el
  personaje se queda aturdido.
- **Sustitución**: si pulsas guardia menos de 0,1 s antes del golpe y tienes 80 de chakra o más, aparece un
  tronco y reapareces detrás del rival. Cuesta 80 de chakra. El bot lo hace con un 10 % de probabilidad.
- **Golpes fuertes** (uppercut, patada) derriban. Si sales volando contra una pared recibes -20; si caes al suelo
  derribado, -10.
- **Regeneración**: guardia +1 cada 0,1 s. Chakra +1 cada 0,2 s, o +5 cada 0,07 s mientras cargas con L.
- **Bot**: se acerca con un desvío aleatorio y carga chakra cuando le queda poco. A media distancia tira kunai y
  esquiva al azar; de cerca spamea combos y a veces se cubre.
- **Todavía no se puede ganar**: cuando la vida llega a 0 se rellena al máximo. Parece código de pruebas del autor
  y es lo primero que habría que cambiar para tener rondas y victoria.
- **Opciones**: solo funciona 30/60 FPS (guardado en `PlayerPrefs["Settings.fpsTarget"]`). Sombras,
  antialiasing, bloom y resolución tienen botones pero sus funciones están vacías.

## Origen de los assets (importante)

Los nombres internos de los assets delatan su origen:

- `SK_CHR_Sarada_Lod1`, `MI_CHR_Sarada`, `T_CHR_Sarada_BC`, `T_UI_Message_Character_Bolt_Sarada_BC` y las
  animaciones `Sarada_Attack_*`, `Sarada_Beaten_*`… siguen la nomenclatura de los juegos de Naruto/Boruto de
  Bandai Namco.
- El escenario son mallas `Mesh_0067_rip__Tex_0014_0_dds`…: el patrón que deja **Ninja Ripper**, una herramienta
  para extraer modelos de otros juegos.
- Los efectos `commse0_000xx` también parecen extraídos de un juego oficial.

Qué implica:

- El **código** es trabajo del autor (Gambikules). Lo más limpio es **escribirle** para pedir permiso o el
  proyecto original de Unity; puede que lo tenga y te lo dé.
- Los **assets de personaje, escenario y audio** son propiedad de Bandai Namco. Para un fan-game gratuito y
  personal es lo habitual en la escena, pero **no se puede vender** y te lo pueden tumbar. Por eso no subimos
  los assets exportados a GitHub (`export/` está en `.gitignore`).
- Si algún día quieres algo 100 % tuyo, habría que cambiar el modelo, las animaciones y el escenario por assets
  propios o con licencia. La lógica reconstruida sirve igual.

## ¿Se puede seguir desarrollando?

Sí. Estos son los caminos, de más a menos práctico:

### A. Proyecto de Unity en PC (recomendado para empezar)

1. Exportar el build a un proyecto de Unity con `tools/exportar_con_assetripper.ps1` (en Windows).
2. Instalar **Unity 2018.4 LTS** desde Unity Hub (sección de versiones archivadas). Es la versión estable más
   cercana a la 2018.2 que usó el autor.
3. Reemplazar el contenido de los scripts exportados por los de `reconstructed/Assets/Scripts/`. Hay que
   **mantener los `.meta`** para que las escenas no pierdan las referencias (ver `reconstructed/README.md`).
4. Reinstalar los paquetes del Asset Store listados en `reconstructed/README.md`.
5. Jugar y modificar en PC. En el editor el mando se lee con el mismo InputManager, y los botones de PS se pueden
   mapear a un mando de PC.

### B. Volver a sacar builds para PS Vita

Unity dejó de soportar la Vita y el módulo "PS Vita Build Support" solo se distribuía a desarrolladores con
licencia de PlayStation, junto con el SDK de Sony. Si no tienes eso, no hay forma oficial de recompilar este
proyecto de Unity para Vita.

### C. Modificar el build existente sin Unity (cambios pequeños)

Los valores que se ven en el Inspector (vida, daño de cada ataque, velocidad, distancias de cámara…) viven en
`Media/level1`. Con **UnityPy** se pueden editar y volver a guardar, y el juego se reempaqueta como VPK. Sirve
para balancear o probar cosas rápido, pero no para cambiar la lógica.

### D. Rehacerlo en un motor abierto con soporte homebrew para Vita

Usando la lógica reconstruida como especificación, se puede reescribir en un motor que compile para Vita sin
licencia de Sony. Por ejemplo, **VitaSDK** con SDL2/vitaGL/raylib, o el port comunitario de **Godot 3** para Vita.
Es el camino más largo, pero el único que te deja sacar builds de Vita de forma libre.

## Estructura del repo

```
docs/ANALISIS.md                 este documento
tools/                           herramientas para reproducir todo (ver tools/README.md)
analysis/il2cpp/                 volcado de Il2CppDumper del Assembly-CSharp, offsets de campos, textos del juego
analysis/asm/                    desensamblado ARM anotado de las 8 clases del juego
analysis/scenes/                 jerarquía de las escenas y valores serializados de los scripts
analysis/input_axes.txt          mapeo de botones del InputManager
analysis/project_settings.md     versión de Unity, tags, layers, física
analysis/assets_inventory.md     lista de todos los assets (solo nombres)
reconstructed/Assets/Scripts/    los 8 scripts C# reconstruidos
game - Copy/, game - Copy.zip    el build original
```
