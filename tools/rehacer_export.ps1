# Vuelve a exportar el juego con AssetRipper, esta vez dandole las DLL del juego para que
# conserve los datos de los scripts (ataques, stats, referencias), mete el codigo C# reconstruido,
# convierte el audio de Vita (HE-VAG) a .wav y sube SOLO un informe de texto a GitHub.
#
# Uso: pega esta linea en PowerShell:
#   [Net.ServicePointManager]::SecurityProtocol='Tls12'; irm https://raw.githubusercontent.com/yuniorrguez13-a11y/psvitagame/claude/nifty-ritchie-f63tl6/tools/rehacer_export.ps1 | iex
#
# Todo lo que se genera queda en export\ (que NO se sube a GitHub).
# El export anterior se guarda como export\UnityProject_v1.

function Invoke-RehacerExport {
    $branch = 'claude/nifty-ritchie-f63tl6'
    $env:GIT_TERMINAL_PROMPT = '0'
    $utf8 = New-Object System.Text.UTF8Encoding $false
    $resumen = New-Object System.Collections.Generic.List[string]

    function Say([string]$msg, [string]$color = 'Cyan') { Write-Host $msg -ForegroundColor $color; $resumen.Add($msg) }
    function Fail([string]$msg) {
        Write-Host ''
        Write-Host "PARADO: $msg" -ForegroundColor Red
        Write-Host 'Mandale una captura de esta ventana a Claude.' -ForegroundColor Red
    }

    # ---------------------------------------------------------------- git + repo
    $git = (Get-Command git -ErrorAction SilentlyContinue | Select-Object -First 1).Source
    if (-not $git) {
        $git = Get-ChildItem "$env:LOCALAPPDATA\GitHubDesktop\app-*\resources\app\git\cmd\git.exe" -ErrorAction SilentlyContinue |
            Sort-Object FullName -Descending | Select-Object -First 1 -ExpandProperty FullName
    }
    if (-not $git) { Fail 'No encuentro git.'; return }
    $repo = 'C:\Users\yunio\Documents\GitHub\psvitagame'
    if ((Test-Path '.git') -and ((Split-Path -Leaf (Get-Location)) -eq 'psvitagame')) { $repo = (Get-Location).Path }
    if (-not (Test-Path (Join-Path $repo '.git'))) { Fail "No encuentro el repo en $repo"; return }
    Set-Location $repo

    Say '1) Actualizando la rama...'
    & $git fetch origin
    $current = (& $git rev-parse --abbrev-ref HEAD).Trim()
    if ($current -ne $branch) {
        & $git checkout $branch
        if ($LASTEXITCODE -ne 0) { Fail "No pude cambiar a $branch."; return }
    }
    & $git merge --ff-only "origin/$branch"
    if ($LASTEXITCODE -ne 0) { Fail 'No pude actualizar la rama.'; return }

    $game       = Join-Path $repo 'game - Copy'
    $managedSrc = Join-Path $repo 'analysis\il2cpp\ManagedDlls'
    $scriptsSrc = Join-Path $repo 'reconstructed\Assets\Scripts'
    $export     = Join-Path $repo 'export'
    $outDir     = Join-Path $export 'UnityProject'
    $logFile    = Join-Path $export 'assetripper.log'
    foreach ($p in $game, $managedSrc, $scriptsSrc) { if (-not (Test-Path $p)) { Fail "Falta $p"; return } }
    New-Item -ItemType Directory -Force -Path $export | Out-Null

    # ---------------------------------------------------------------- AssetRipper
    $exe = Get-ChildItem -Path (Join-Path $export 'AssetRipper') -Recurse -Filter 'AssetRipper.GUI.Free.exe' -ErrorAction SilentlyContinue | Select-Object -First 1
    if (-not $exe) {
        Say '   Descargando AssetRipper...'
        $zip = Join-Path $export 'AssetRipper_win_x64.zip'
        Invoke-WebRequest -Uri 'https://github.com/AssetRipper/AssetRipper/releases/latest/download/AssetRipper_win_x64.zip' -OutFile $zip
        Expand-Archive -Path $zip -DestinationPath (Join-Path $export 'AssetRipper') -Force
        $exe = Get-ChildItem -Path (Join-Path $export 'AssetRipper') -Recurse -Filter 'AssetRipper.GUI.Free.exe' | Select-Object -First 1
    }
    if (-not $exe) { Fail 'No pude conseguir AssetRipper.'; return }

    # ---------------------------------------------------------------- copia del juego + DLLs
    Say '2) Preparando una copia del juego con las DLL de los scripts (Media\Managed)...'
    $inputDir = Join-Path $export 'input\game'
    if (Test-Path $inputDir) { Remove-Item -Recurse -Force $inputDir }
    New-Item -ItemType Directory -Force -Path $inputDir | Out-Null
    & robocopy $game $inputDir /E /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -ge 8) { Fail 'No pude copiar la carpeta del juego.'; return }
    $managedDst = Join-Path $inputDir 'Media\Managed'
    New-Item -ItemType Directory -Force -Path $managedDst | Out-Null
    Copy-Item -Path (Join-Path $managedSrc '*.dll') -Destination $managedDst -Force
    Say "   $((Get-ChildItem $managedDst -Filter *.dll).Count) DLL copiadas."

    if (Test-Path $outDir) {
        $old = Join-Path $export 'UnityProject_v1'
        if (Test-Path $old) { Remove-Item -Recurse -Force $old }
        Rename-Item $outDir 'UnityProject_v1'
        Say '   El export anterior se guardo como export\UnityProject_v1.'
    }
    if (Test-Path $logFile) { Move-Item -Force $logFile (Join-Path $export 'assetripper_v1.log') }

    Say '3) Exportando con AssetRipper (puede tardar unos minutos)...'
    $port = 55772
    $proc = Start-Process -FilePath $exe.FullName -PassThru -WindowStyle Minimized `
        -ArgumentList @('--port', $port, '--headless', '--log', '--log-path', "`"$logFile`"")
    $base = "http://127.0.0.1:$port"
    for ($i = 0; $i -lt 60; $i++) {
        try { Invoke-WebRequest -Uri $base -UseBasicParsing -TimeoutSec 2 | Out-Null; break } catch { Start-Sleep -Seconds 1 }
    }
    try {
        Invoke-WebRequest -Uri "$base/LoadFolder" -Method Post -UseBasicParsing -TimeoutSec 1800 -Body @{ Path = $inputDir } | Out-Null
        Invoke-WebRequest -Uri "$base/Export/UnityProject" -Method Post -UseBasicParsing -TimeoutSec 3600 -Body @{ Path = $outDir } | Out-Null
    }
    catch { Fail "AssetRipper fallo: $($_.Exception.Message)"; return }
    finally { Stop-Process -Id $proc.Id -Force -ErrorAction SilentlyContinue }

    $pv = Get-ChildItem -Path $outDir -Recurse -Filter 'ProjectVersion.txt' -ErrorAction SilentlyContinue | Select-Object -First 1
    if (-not $pv) { Fail 'El export no genero un proyecto de Unity.'; return }
    $root = Split-Path -Parent (Split-Path -Parent $pv.FullName)
    $assets = Join-Path $root 'Assets'
    if (Test-Path $logFile) {
        $backend = Select-String -Path $logFile -Pattern 'scripting backend' | Select-Object -First 1
        if ($backend) { Say "   Log: $($backend.Line.Trim())" }
    }

    # ---------------------------------------------------------------- scripts reconstruidos
    Say '4) Metiendo el codigo C# reconstruido (manteniendo los .meta)...'
    foreach ($cs in Get-ChildItem $scriptsSrc -Filter *.cs) {
        $target = Get-ChildItem -Path $assets -Recurse -Filter $cs.Name -ErrorAction SilentlyContinue |
            Where-Object { $_.FullName -like '*Assembly-CSharp*' } | Select-Object -First 1
        if ($target) {
            Copy-Item $cs.FullName $target.FullName -Force
            Say "   $($cs.Name) -> reemplazado"
        }
        else {
            Say "   $($cs.Name) -> NO encontrado en el export" 'Yellow'
        }
    }

    # ---------------------------------------------------------------- audio HE-VAG -> wav
    Say '5) Convirtiendo el audio de Vita (HE-VAG) a .wav con vgmstream...'
    $vgmDir = Join-Path $export 'vgmstream'
    $vgm = Get-ChildItem -Path $vgmDir -Recurse -Filter 'vgmstream-cli.exe' -ErrorAction SilentlyContinue | Select-Object -First 1
    if (-not $vgm) {
        try {
            $zip = Join-Path $export 'vgmstream-win64.zip'
            Invoke-WebRequest -Uri 'https://github.com/vgmstream/vgmstream-releases/releases/download/nightly/vgmstream-win64.zip' -OutFile $zip
            Expand-Archive -Path $zip -DestinationPath $vgmDir -Force
            $vgm = Get-ChildItem -Path $vgmDir -Recurse -Filter 'vgmstream-cli.exe' | Select-Object -First 1
        }
        catch { Say "   No pude descargar vgmstream: $($_.Exception.Message)" 'Yellow' }
    }
    $audioGuids = @()
    if ($vgm) {
        $tmp = Join-Path $export 'audio_tmp'
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        $origRes = Join-Path $game 'Media\sharedassets1.resource'
        $ok = 0; $bad = 0
        foreach ($clip in Get-ChildItem -Path $assets -Recurse -Filter '*.audioclip') {
            $baseName = [IO.Path]::Combine($clip.DirectoryName, [IO.Path]::GetFileNameWithoutExtension($clip.Name))
            $bytes = $null
            $resS = "$baseName.resS"
            if (Test-Path $resS) { $bytes = [IO.File]::ReadAllBytes($resS) }
            $isFsb = $bytes -and $bytes.Length -gt 4 -and [Text.Encoding]::ASCII.GetString($bytes, 0, 4) -eq 'FSB5'
            if (-not $isFsb) {
                # plan B: leer el trozo directamente del juego original usando m_Offset / m_Size del .audioclip
                $yaml = [IO.File]::ReadAllText($clip.FullName)
                $mo = [regex]::Match($yaml, 'm_Offset:\s*(\d+)'); $ms = [regex]::Match($yaml, 'm_Size:\s*(\d+)')
                if ($mo.Success -and $ms.Success -and (Test-Path $origRes)) {
                    $fs = [IO.File]::OpenRead($origRes)
                    try {
                        $bytes = New-Object byte[] ([int]$ms.Groups[1].Value)
                        $fs.Seek([int64]$mo.Groups[1].Value, 'Begin') | Out-Null
                        $fs.Read($bytes, 0, $bytes.Length) | Out-Null
                    }
                    finally { $fs.Close() }
                    $isFsb = [Text.Encoding]::ASCII.GetString($bytes, 0, 4) -eq 'FSB5'
                }
            }
            if (-not $isFsb) { $bad++; Say "   $($clip.Name): no encuentro los datos FSB5" 'Yellow'; continue }

            $fsb = Join-Path $tmp ($clip.BaseName + '.fsb')
            [IO.File]::WriteAllBytes($fsb, $bytes)
            $wav = "$baseName.wav"
            & $vgm.FullName -o $wav $fsb | Out-Null
            if (-not (Test-Path $wav)) { $bad++; Say "   $($clip.Name): vgmstream no pudo convertirlo" 'Yellow'; continue }

            $meta = "$($clip.FullName).meta"
            $guid = $null
            if (Test-Path $meta) { $guid = ([regex]::Match([IO.File]::ReadAllText($meta), 'guid:\s*([0-9a-f]{32})')).Groups[1].Value }
            if ($guid) {
                [IO.File]::WriteAllText("$wav.meta", "fileFormatVersion: 2`nguid: $guid`n", $utf8)
                $audioGuids += $guid
            }
            Remove-Item -Force $clip.FullName, $meta -ErrorAction SilentlyContinue
            Remove-Item -Force $resS, "$resS.meta" -ErrorAction SilentlyContinue
            $ok++
        }
        Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
        Say "   Audio: $ok convertidos a .wav, $bad con problemas."

        # las referencias a assets nativos usan type: 2; a archivos importados (.wav) type: 3
        if ($audioGuids.Count -gt 0) {
            $patched = 0
            foreach ($f in Get-ChildItem -Path $assets -Recurse -Include *.unity, *.prefab, *.asset, *.controller) {
                $t = [IO.File]::ReadAllText($f.FullName)
                $n = $t
                foreach ($g in $audioGuids) { $n = $n.Replace("guid: $g, type: 2", "guid: $g, type: 3") }
                if ($n -ne $t) { [IO.File]::WriteAllText($f.FullName, $n, $utf8); $patched++ }
            }
            Say "   Referencias de audio actualizadas en $patched archivo(s)."
        }
    }
    else {
        Say '   Sin vgmstream: el audio se queda como estaba (no suena en Unity).' 'Yellow'
    }

    [IO.File]::WriteAllLines((Join-Path $export 'rehacer_resumen.txt'), $resumen, $utf8)

    # ---------------------------------------------------------------- informe + subir
    Say '6) Generando el informe y subiendolo (solo texto)...'
    & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $repo 'tools\reporte_export.ps1')
    & $git add -- analysis/export_report.txt
    & $git diff --cached --quiet -- analysis/export_report.txt
    if ($LASTEXITCODE -ne 0) {
        & $git commit -m 'Informe del export v2 (con DLLs, scripts y audio)' -- analysis/export_report.txt
        if ($LASTEXITCODE -ne 0) { Fail 'El commit del informe fallo.'; return }
    }
    & $git push origin $branch
    if ($LASTEXITCODE -ne 0) {
        Write-Host 'El informe esta en commit pero no se pudo subir: dale a "Push origin" en GitHub Desktop.' -ForegroundColor Yellow
        return
    }

    Write-Host ''
    Write-Host 'LISTO. Dile a Claude "ya".' -ForegroundColor Green
    Write-Host "Proyecto de Unity: $root" -ForegroundColor Green
    Write-Host 'La carpeta export\ sigue solo en tu PC (no se sube).' -ForegroundColor Green
}

Invoke-RehacerExport
