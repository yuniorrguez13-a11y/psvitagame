# Scripts reconstruidos

Código C# de las 8 clases propias del juego, reconstruido a partir del binario ARM
(`il2CppAssemblies.suprx`) usando el desensamblado anotado de `analysis/asm/`.

| Script | Qué hace |
|---|---|
| `controller.cs` | Luchador: input, combos, guardia, esquiva, sustitución, kunai, recuperar chakra y la IA del bot |
| `MyController.cs` | Motor del personaje: detección de suelo (SphereCast), gravedad, salto/dash y empuje entre luchadores |
| `cameraSC.cs` | Cámara de pelea (encuadra a los dos luchadores), barras de vida/chakra/guardia y cámara del ninjutsu |
| `throwingObject.cs` | Kunai/shuriken teledirigido (daño, choque con arbustos y con otros proyectiles) |
| `collisionSC.cs` | Gravedad simple con empuje fuera de triggers |
| `eyes.cs` | Mueve el offset de la textura de los ojos para que "miren" |
| `loadingScreen.cs` | Carga asíncrona de la escena `1` con porcentaje |
| `GameOptions.cs` | Panel de opciones (solo funciona 30/60 FPS, guardado en `PlayerPrefs["Settings.fpsTarget"]`) |

## Estado

- Los nombres, tipos y el orden de **todos los campos** son idénticos a los originales, así que los
  valores guardados en las escenas (tabla de ataques, stats, referencias) se enlazan solos.
- Compilan sin errores contra la API real de Unity del juego (las DLL de referencia que genera
  Il2CppDumper) con C# 7.3 / .NET 4.7.1.
- Cada método se revisó contra el ensamblador. Las dudas que quedan están marcadas con `// NOTE:`
  y los arreglos de esa revisión con `// FIX(verified):`.
- No se recuperan los comentarios ni los nombres de variables locales del autor (el compilador los
  borra). La lógica, las constantes y los textos sí son los del binario.

## Cómo usarlos en un proyecto exportado con AssetRipper

Las escenas no apuntan a los scripts por nombre sino por el GUID de su archivo `.meta`. Por eso:

1. Exporta el juego con `tools/exportar_con_assetripper.ps1`.
2. Dentro del proyecto exportado busca los scripts que generó AssetRipper con el mismo nombre de clase
   (normalmente en `Assets/Scripts/Assembly-CSharp/`).
3. **Reemplaza solo el contenido** de cada `.cs` por el de esta carpeta. No borres ni recrees los
   `.meta`, porque se perderían las referencias de las escenas.

## Dependencias de terceros (no incluidas)

El `Assembly-CSharp` original también contenía paquetes del Asset Store que hay que reinstalar desde
su fuente, no reconstruir:

- **Dynamic Shadow Projector** (`DynamicShadowProjector.*`)
- **Shadow Volumes Toolkit** (`ShadowVolume*`, `SkinnedShadowVolume`, `ShadowMeshCreator`)
- **Fantasy Skybox FREE** (`FantasySkyFree.*`, `GE_*`)
- **Fast Mobile Bloom** (`FastMobileBloom`)
- **Color Suite** de Keijiro (`ColorSuite`)
- **Dynamic Color Correction** de Corta Studios (`com.cortastudios.*`)
- **Standard Assets / Image Effects** de Unity (`UnityStandardAssets.ImageEffects.*`)

`GameOptions` referencia `FastMobileBloom` y `ColorSuite`, así que necesita esos dos paquetes para compilar.
