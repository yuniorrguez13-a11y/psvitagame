# Arregla el commit local "aaa" (que metia la carpeta export\ en main) y sube SOLO el informe de texto.
#
# Uso: pega esta linea en PowerShell (no hace falta descargar nada antes):
#   [Net.ServicePointManager]::SecurityProtocol='Tls12'; irm https://raw.githubusercontent.com/yuniorrguez13-a11y/psvitagame/claude/nifty-ritchie-f63tl6/tools/arreglar_y_subir_informe.ps1 | iex
#
# Que hace, paso a paso:
#   1. Deshace los commits locales de main que no se han subido (los archivos NO se borran del disco;
#      se guarda una copia del commit en la rama local "respaldo-main").
#   2. Cambia a la rama claude/nifty-ritchie-f63tl6, donde export\ esta ignorado.
#   3. Genera analysis\export_report.txt (solo texto: nombres de archivos y lineas del log).
#   4. Hace commit SOLO de ese archivo y lo sube a GitHub.

function Invoke-ArreglarYSubir {
    $branch = 'claude/nifty-ritchie-f63tl6'
    $env:GIT_TERMINAL_PROMPT = '0'

    function Say([string]$msg, [string]$color = 'Cyan') { Write-Host $msg -ForegroundColor $color }
    function Fail([string]$msg) {
        Write-Host ''
        Write-Host "PARADO: $msg" -ForegroundColor Red
        Write-Host 'No se ha subido nada. Mandale una captura de esta ventana a Claude.' -ForegroundColor Red
    }

    # --- git: el del PATH o el que trae GitHub Desktop
    $git = (Get-Command git -ErrorAction SilentlyContinue | Select-Object -First 1).Source
    if (-not $git) {
        $git = Get-ChildItem "$env:LOCALAPPDATA\GitHubDesktop\app-*\resources\app\git\cmd\git.exe" -ErrorAction SilentlyContinue |
            Sort-Object FullName -Descending | Select-Object -First 1 -ExpandProperty FullName
    }
    if (-not $git) { Fail 'No encuentro git (ni en el PATH ni dentro de GitHub Desktop).'; return }
    Say "git: $git"

    # --- carpeta del repo
    $repo = 'C:\Users\yunio\Documents\GitHub\psvitagame'
    if ((Test-Path '.git') -and ((Split-Path -Leaf (Get-Location)) -eq 'psvitagame')) { $repo = (Get-Location).Path }
    if (-not (Test-Path (Join-Path $repo '.git'))) { Fail "No encuentro el repo en $repo"; return }
    Set-Location $repo
    Say "Repo: $repo"

    Say '1) Descargando lo ultimo de GitHub...'
    & $git fetch origin
    if ($LASTEXITCODE -ne 0) { Fail 'git fetch fallo (revisa la conexion a internet).'; return }

    $current = (& $git rev-parse --abbrev-ref HEAD).Trim()
    Say "   Rama actual: $current"

    if ($current -eq 'main') {
        $ahead = [int]((& $git rev-list --count origin/main..HEAD).Trim())
        if ($ahead -gt 0) {
            Say "2) main tiene $ahead commit(s) sin subir (el 'aaa'). Los deshago sin borrar archivos..."
            & $git branch -f respaldo-main HEAD | Out-Null
            & $git reset --mixed origin/main
            if ($LASTEXITCODE -ne 0) { Fail 'No pude deshacer el commit local.'; return }
            Say '   Hecho. (Copia de seguridad del commit en la rama local "respaldo-main".)' 'Green'
        }
        else {
            Say '2) main no tiene commits sin subir. Nada que deshacer.'
        }

        # .gitignore creado en main (vacio) chocaria con el de la otra rama: lo aparto dentro de export\
        & $git ls-files --error-unmatch .gitignore 2>$null | Out-Null
        if ($LASTEXITCODE -ne 0 -and (Test-Path '.gitignore')) {
            New-Item -ItemType Directory -Force -Path 'export' | Out-Null
            Move-Item -Force '.gitignore' 'export\gitignore-de-main.txt'
            Say '   Aparte el .gitignore vacio de main (quedo en export\gitignore-de-main.txt).'
        }

        # Cambios en archivos que ya estaban en main (raro): los guardo en un stash para no perderlos
        $tracked = & $git status --porcelain --untracked-files=no
        if ($tracked) {
            Say '   Hay cambios en archivos del juego original; los guardo en un stash por seguridad.' 'Yellow'
            & $git stash push -m 'cambios en main antes de cambiar de rama' | Out-Null
        }
    }

    Say "3) Cambiando a la rama $branch ..."
    & $git show-ref --verify --quiet "refs/heads/$branch"
    if ($LASTEXITCODE -eq 0) {
        & $git checkout $branch
        if ($LASTEXITCODE -ne 0) { Fail "No pude cambiar a $branch."; return }
        & $git merge --ff-only "origin/$branch"
        if ($LASTEXITCODE -ne 0) { Fail "No pude actualizar $branch con lo de GitHub."; return }
    }
    else {
        & $git checkout -b $branch --track "origin/$branch"
        if ($LASTEXITCODE -ne 0) { Fail "No pude cambiar a $branch."; return }
    }

    $reporte = Join-Path $repo 'tools\reporte_export.ps1'
    if (-not (Test-Path $reporte)) { Fail 'No encuentro tools\reporte_export.ps1 en la rama.'; return }
    if (-not (Test-Path (Join-Path $repo 'export\UnityProject'))) { Fail 'No encuentro export\UnityProject (el export de AssetRipper).'; return }

    Say '4) Generando analysis\export_report.txt ...'
    & powershell -NoProfile -ExecutionPolicy Bypass -File $reporte
    if (-not (Test-Path 'analysis\export_report.txt')) { Fail 'No se genero el informe.'; return }

    Say '5) Haciendo commit SOLO del informe...'
    & $git add -- analysis/export_report.txt
    & $git diff --cached --quiet -- analysis/export_report.txt
    if ($LASTEXITCODE -ne 0) {
        & $git commit -m 'Informe del export de AssetRipper' -- analysis/export_report.txt
        if ($LASTEXITCODE -ne 0) { Fail 'El commit fallo (puede que git no tenga tu nombre/email configurado).'; return }
    }
    else {
        Say '   El informe no cambio desde la ultima vez; no hace falta commit.'
    }

    Say '6) Subiendo a GitHub...'
    & $git push origin $branch
    if ($LASTEXITCODE -ne 0) {
        Write-Host ''
        Write-Host 'El commit esta hecho pero no se pudo subir desde aqui.' -ForegroundColor Yellow
        Write-Host 'Abre GitHub Desktop (ya estara en la rama correcta) y dale al boton "Push origin".' -ForegroundColor Yellow
        return
    }

    Write-Host ''
    Write-Host 'LISTO. El informe esta subido. Dile a Claude "ya".' -ForegroundColor Green
    Write-Host 'Tu carpeta export\ sigue en tu PC y NO se subio.' -ForegroundColor Green
}

Invoke-ArreglarYSubir
