# Exporta el build de Vita a un proyecto de Unity usando AssetRipper (modo sin ventana).
#
# Uso (PowerShell, desde la raíz del repo):
#   powershell -ExecutionPolicy Bypass -File tools\exportar_con_assetripper.ps1
#
# Resultado:
#   export\UnityProject\   -> proyecto de Unity exportado (NO se sube a GitHub, está en .gitignore)
#   export\assetripper.log -> log de AssetRipper (este sí conviene compartirlo)
#
# Los modelos, texturas y sonidos exportados vienen de juegos de Bandai Namco:
# mantenlos fuera de cualquier repo público.

$ErrorActionPreference = 'Stop'
$repo    = Split-Path -Parent $PSScriptRoot
$game    = Join-Path $repo 'game - Copy'
$export  = Join-Path $repo 'export'
$tools   = Join-Path $export 'AssetRipper'
$outDir  = Join-Path $export 'UnityProject'
$logFile = Join-Path $export 'assetripper.log'
$port    = 55771

New-Item -ItemType Directory -Force -Path $export | Out-Null

# 1) Descargar AssetRipper (build para Windows x64) si no está ya
$exe = Get-ChildItem -Path $tools -Recurse -Filter 'AssetRipper.GUI.Free.exe' -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $exe) {
    $zip = Join-Path $export 'AssetRipper_win_x64.zip'
    Write-Host 'Descargando AssetRipper...'
    Invoke-WebRequest -Uri 'https://github.com/AssetRipper/AssetRipper/releases/latest/download/AssetRipper_win_x64.zip' -OutFile $zip
    Expand-Archive -Path $zip -DestinationPath $tools -Force
    $exe = Get-ChildItem -Path $tools -Recurse -Filter 'AssetRipper.GUI.Free.exe' | Select-Object -First 1
}
Write-Host "AssetRipper: $($exe.FullName)"

# 2) Arrancar AssetRipper sin abrir el navegador, con log a archivo
$proc = Start-Process -FilePath $exe.FullName -PassThru -WindowStyle Minimized `
    -ArgumentList @('--port', $port, '--headless', '--log', '--log-path', "`"$logFile`"")
$base = "http://127.0.0.1:$port"
for ($i = 0; $i -lt 60; $i++) {
    try { Invoke-WebRequest -Uri $base -UseBasicParsing -TimeoutSec 2 | Out-Null; break } catch { Start-Sleep -Seconds 1 }
}

try {
    # 3) Cargar la carpeta del juego (AssetRipper detecta el layout de Vita: Media\, eboot.bin, ...)
    Write-Host "Cargando $game ..."
    Invoke-WebRequest -Uri "$base/LoadFolder" -Method Post -UseBasicParsing -TimeoutSec 1800 `
        -Body @{ Path = $game } | Out-Null

    # 4) Exportar como proyecto de Unity
    Write-Host "Exportando a $outDir ..."
    if (Test-Path $outDir) { Remove-Item -Recurse -Force $outDir }
    Invoke-WebRequest -Uri "$base/Export/UnityProject" -Method Post -UseBasicParsing -TimeoutSec 3600 `
        -Body @{ Path = $outDir } | Out-Null
}
finally {
    Stop-Process -Id $proc.Id -Force -ErrorAction SilentlyContinue
}

# 5) Resumen rápido para pegar en el chat
$assets = Get-ChildItem -Path $outDir -Recurse -File -ErrorAction SilentlyContinue
Write-Host ''
Write-Host "Archivos exportados: $($assets.Count)"
$assets | Group-Object Extension | Sort-Object Count -Descending | Select-Object -First 15 Name, Count | Format-Table -AutoSize
Get-ChildItem -Path $outDir -Recurse -Include *.unity, *.cs -ErrorAction SilentlyContinue |
    Select-Object -First 40 @{ n = 'Archivo'; e = { $_.FullName.Substring($outDir.Length + 1) } } | Format-Table -AutoSize
Write-Host "Log completo: $logFile"
