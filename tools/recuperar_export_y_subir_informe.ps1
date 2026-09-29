# Recupera la carpeta export\ (que quedo guardada dentro del commit local "aaa" de main o en un stash
# de GitHub Desktop), limpia main para que no se suba ese commit, y sube SOLO el informe de texto.
#
# Uso: pega esta linea en PowerShell:
#   [Net.ServicePointManager]::SecurityProtocol='Tls12'; irm https://raw.githubusercontent.com/yuniorrguez13-a11y/psvitagame/claude/nifty-ritchie-f63tl6/tools/recuperar_export_y_subir_informe.ps1 | iex

function Invoke-RecuperarYSubir {
    $branch = 'claude/nifty-ritchie-f63tl6'
    $env:GIT_TERMINAL_PROMPT = '0'

    function Say([string]$msg, [string]$color = 'Cyan') { Write-Host $msg -ForegroundColor $color }
    function Fail([string]$msg) {
        Write-Host ''
        Write-Host "PARADO: $msg" -ForegroundColor Red
        Write-Host 'No se ha subido nada. Mandale una captura de esta ventana a Claude.' -ForegroundColor Red
    }

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

    Say '1) Poniendome en la rama correcta...'
    & $git fetch origin
    $current = (& $git rev-parse --abbrev-ref HEAD).Trim()
    if ($current -ne $branch) {
        # si hay un .gitignore suelto (el vacio de main), apartarlo para poder cambiar de rama
        & $git ls-files --error-unmatch .gitignore 2>$null | Out-Null
        if ($LASTEXITCODE -ne 0 -and (Test-Path '.gitignore')) { Move-Item -Force '.gitignore' '.gitignore-de-main.txt' }
        & $git checkout $branch
        if ($LASTEXITCODE -ne 0) { Fail "No pude cambiar a $branch."; return }
    }
    & $git merge --ff-only "origin/$branch" | Out-Null
    Say "   En $branch." 'Green'

    Say '2) Buscando donde quedo guardada la carpeta export\ ...'
    $source = $null
    if (Test-Path 'export\UnityProject') {
        Say '   export\UnityProject ya esta en el disco.' 'Green'
    }
    else {
        $candidates = @('main', 'respaldo-main')
        $stashCount = @(& $git stash list).Count
        for ($i = 0; $i -lt $stashCount; $i++) { $candidates += "stash@{$i}^3"; $candidates += "stash@{$i}" }
        foreach ($ref in $candidates) {
            & $git rev-parse --verify --quiet "$ref^{commit}" 2>$null | Out-Null
            if ($LASTEXITCODE -ne 0) { continue }
            $tree = & $git ls-tree -d $ref -- export/UnityProject 2>$null
            if ($tree) { $source = $ref; break }
        }
        if (-not $source) { Fail 'No encuentro export\ ni en main, ni en respaldo-main, ni en los stash. Habria que volver a exportar con AssetRipper.'; return }
        Say "   Esta dentro de '$source'. Recuperandola al disco (no se sube a GitHub)..."
        & $git restore --source=$source --worktree -- export
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path 'export\UnityProject')) { Fail 'No pude recuperar export\.'; return }
        Say '   Recuperada.' 'Green'
    }

    Say '3) Limpiando main para que el commit "aaa" no se suba nunca...'
    $ahead = [int]((& $git rev-list --count origin/main..main 2>$null) | Select-Object -First 1)
    if ($ahead -gt 0) {
        & $git show-ref --verify --quiet refs/heads/respaldo-main
        if ($LASTEXITCODE -ne 0) { & $git branch respaldo-main main | Out-Null }
        & $git branch -f main origin/main
        if ($LASTEXITCODE -ne 0) { Fail 'No pude limpiar main.'; return }
        Say "   main vuelve a estar igual que en GitHub (copia del commit en la rama local 'respaldo-main')." 'Green'
    }
    else {
        Say '   main ya estaba limpio.'
    }

    Say '4) Generando analysis\export_report.txt ...'
    & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $repo 'tools\reporte_export.ps1')
    if (-not (Test-Path 'analysis\export_report.txt')) { Fail 'No se genero el informe.'; return }

    Say '5) Commit SOLO del informe...'
    & $git add -- analysis/export_report.txt
    & $git diff --cached --quiet -- analysis/export_report.txt
    if ($LASTEXITCODE -ne 0) {
        & $git commit -m 'Informe del export de AssetRipper' -- analysis/export_report.txt
        if ($LASTEXITCODE -ne 0) { Fail 'El commit fallo (puede que git no tenga tu nombre/email configurado).'; return }
    }

    Say '6) Subiendo a GitHub...'
    & $git push origin $branch
    if ($LASTEXITCODE -ne 0) {
        Write-Host ''
        Write-Host 'El commit esta hecho pero no se pudo subir desde aqui.' -ForegroundColor Yellow
        Write-Host 'Abre GitHub Desktop y dale al boton "Push origin".' -ForegroundColor Yellow
        return
    }

    $pend = & $git status --porcelain
    Write-Host ''
    Write-Host 'LISTO. El informe esta subido. Dile a Claude "ya".' -ForegroundColor Green
    Write-Host 'Tu carpeta export\ esta en tu PC y NO se subio.' -ForegroundColor Green
    if ($pend) { Write-Host "(Quedan $(@($pend).Count) cambios sin commit en la rama; no pasa nada, no se subieron.)" -ForegroundColor DarkGray }
}

Invoke-RecuperarYSubir
