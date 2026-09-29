# Genera un informe de texto del proyecto exportado por AssetRipper, para compartirlo por GitHub.
# El informe SOLO contiene nombres de archivos, líneas del log y cabeceras de los scripts
# (no incluye modelos, texturas ni sonidos), así que se puede subir sin problema.
#
# Uso (PowerShell, desde la raíz del repo):
#   powershell -ExecutionPolicy Bypass -File tools\reporte_export.ps1
#   git add analysis\export_report.txt
#   git commit -m "Informe del export de AssetRipper"
#   git push

$ErrorActionPreference = 'Continue'
$repo    = Split-Path -Parent $PSScriptRoot
$export  = Join-Path $repo 'export'
$proj    = Join-Path $export 'UnityProject'
$logFile = Join-Path $export 'assetripper.log'
$out     = Join-Path $repo 'analysis\export_report.txt'
$lines   = New-Object System.Collections.Generic.List[string]
function Add([string]$s) { $lines.Add($s) }

Add "# Informe del export de AssetRipper"
Add ""
if (-not (Test-Path $proj)) {
    Add "No existe $proj (el export no se generó o está en otra carpeta)."
    Add "Contenido de export\:"
    Get-ChildItem -Path $export -ErrorAction SilentlyContinue | ForEach-Object { Add ("  " + $_.Name) }
}
else {
    # Carpeta real del proyecto (AssetRipper a veces crea una subcarpeta)
    $root = $proj
    $pv = Get-ChildItem -Path $proj -Recurse -Filter 'ProjectVersion.txt' -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($pv) {
        $root = Split-Path -Parent (Split-Path -Parent $pv.FullName)
        Add "## ProjectVersion.txt"
        Get-Content $pv.FullName | ForEach-Object { Add ("  " + $_) }
        Add ""
    }
    Add "Raiz del proyecto: $($root.Substring($repo.Length + 1))"
    Add ""

    $files = Get-ChildItem -Path $root -Recurse -File -ErrorAction SilentlyContinue
    Add "## Archivos por extension (total $($files.Count))"
    $files | Group-Object Extension | Sort-Object Count -Descending | ForEach-Object { Add ("  {0,-12} {1}" -f $_.Name, $_.Count) }
    Add ""

    Add "## Carpetas de primer y segundo nivel en Assets"
    $assets = Join-Path $root 'Assets'
    Get-ChildItem -Path $assets -Directory -ErrorAction SilentlyContinue | ForEach-Object {
        $n = (Get-ChildItem -Path $_.FullName -Recurse -File -ErrorAction SilentlyContinue).Count
        Add ("  {0}  ({1} archivos)" -f $_.Name, $n)
        Get-ChildItem -Path $_.FullName -Directory -ErrorAction SilentlyContinue | ForEach-Object {
            $m = (Get-ChildItem -Path $_.FullName -Recurse -File -ErrorAction SilentlyContinue).Count
            Add ("    {0}  ({1} archivos)" -f $_.Name, $m)
        }
    }
    Add ""

    Add "## Escenas, prefabs, animators"
    $files | Where-Object { $_.Extension -in '.unity', '.prefab', '.controller' } | ForEach-Object {
        Add ("  " + $_.FullName.Substring($root.Length + 1))
    }
    Add ""

    Add "## Scripts .cs (todos)"
    $cs = $files | Where-Object { $_.Extension -eq '.cs' }
    $cs | ForEach-Object { Add ("  {0}  ({1} bytes)" -f $_.FullName.Substring($root.Length + 1), $_.Length) }
    Add ""

    Add "## Scripts del juego: GUID del .meta y primeras lineas"
    foreach ($cls in 'controller', 'MyController', 'cameraSC', 'throwingObject', 'collisionSC', 'eyes', 'loadingScreen', 'GameOptions', 'FastMobileBloom', 'ColorSuite') {
        $f = $cs | Where-Object { $_.BaseName -eq $cls } | Select-Object -First 1
        if (-not $f) { Add "  [$cls] NO ENCONTRADO"; continue }
        $guid = ''
        $meta = $f.FullName + '.meta'
        if (Test-Path $meta) { $guid = (Select-String -Path $meta -Pattern '^guid:' | Select-Object -First 1).Line }
        Add ("  [$cls] " + $f.FullName.Substring($root.Length + 1) + "   " + $guid)
        Get-Content $f.FullName -TotalCount 25 | ForEach-Object { Add ("      | " + $_) }
    }
    Add ""
}

Add "## Log de AssetRipper (errores, avisos e IL2CPP)"
if (Test-Path $logFile) {
    $hits = Select-String -Path $logFile -Pattern 'error|warn|exception|il2cpp|cpp2il|psp2|vita|platform|script|failed|unsupported' -CaseSensitive:$false
    Add "  ($($hits.Count) lineas coinciden; se muestran hasta 300)"
    $hits | Select-Object -First 300 | ForEach-Object { Add ("  " + $_.Line) }
    Add ""
    Add "## Ultimas 40 lineas del log"
    Get-Content $logFile -Tail 40 | ForEach-Object { Add ("  " + $_) }
}
else {
    Add "  No existe $logFile"
}

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $out) | Out-Null
$lines | Set-Content -Path $out -Encoding UTF8
Write-Host "Informe escrito en $out ($($lines.Count) lineas)"
