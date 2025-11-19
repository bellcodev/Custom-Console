$env:POSH_THEMES_PATH = "C:\tools\oh-my-posh"
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression

Write-Host ""
Write-Host "██╗     ██╗ █████████╗ ██╗       ██████╗  ██████╗  ███╗   ███╗ █████████╗"
Write-Host "██║     ██║ ██╔══════╝ ██║      ██╔════╝ ██╔═══██╗ ████╗ ████║ ██╔══════╝"
Write-Host "██║  █╗ ██║ ██║        ██║      ██║      ██║   ██║ ██╔████╔██║ ██║       "
Write-Host "██║ ██║ ██║ ██████╗    ██║      ██║      ██║   ██║ ██║╚██╔╝██║ ██████╗   "
Write-Host "██║███║██║  ██╔═══╝    ██║      ██║      ██║   ██║ ██║ ╚═╝ ██║ ██╔═══╝   "
Write-Host "╚███╔███╔╝  █████████╗ ╚██████╗ ╚██████╗ ╚██████╔╝ ██║     ██║ █████████╗"
Write-Host " ╚══╝╚══╝   ╚════════╝  ╚═════╝  ╚═════╝  ╚═════╝  ╚═╝     ╚═╝ ╚════════╝ "
Write-Host ""
Write-Host "Welcome to PowerShell 💻"
Write-Host "Type 'commands' for a list of available commands. 📂"
Write-Host ""

function commands {
    $secciones = @(
@'
╔════════════════════════════════════╗
║   🧠 COMANDOS ÚTILES 💻            ║
╚════════════════════════════════════╝

🔹 Productividad rápida:
  clean                   # Limpiar la consola
  go-code                 # Abrir VS Code en carpeta actual
  edit-profile            # Editar tu perfil de PowerShell
  reload                  # Recargar el perfil
  today                   # Mostrar fecha y hora actual
  ip                      # Ver IP local
  net-check               # Probar conexión a Google
  subirRepo [commit] [link] # Sube un repositorio a GitHub
  wifi-info               # Muestra datos sobre la Wi-Fi y conexión
  run-api                 # Corre un servidor local de FastAPI
  ip-location [ip]        # Geolocaliza una IP
'@,
@'
╔════════════════════════════════════╗
║   🔧 GIT                           ║
╚════════════════════════════════════╝

  git-help                # Muestra comandos frecuentes de Git
  push-code               # Ejecuta add, commit y push en secuencia
  git init
  git add .
  git commit -m "mensaje"
  git push
  git pull
  git status
  git log --oneline
  git branch
  git checkout -b nueva-rama
  git merge rama
  git stash
  git clone <url>
'@,
@'
╔════════════════════════════════════╗
║   ⚡ FASTAPI                       ║
╚════════════════════════════════════╝

  api-fast                # Muestra ejemplos de rutas y uso
  uvicorn main:app --reload
  @app.get("/")
  @app.post("/crear")
  from fastapi import FastAPI
  from pydantic import BaseModel
'@,
@'
╔════════════════════════════════════╗
║   🗃️ SQLITE                        ║
╚════════════════════════════════════╝

  sqlite-guide            # Muestra comandos útiles de SQLite
  sqlite3 database.db
  .tables
  SELECT * FROM tabla;
  CREATE TABLE usuarios (...);
  INSERT INTO usuarios VALUES (...);
'@,
@'
╔════════════════════════════════════╗
║   🐳 DOCKER                        ║
╚════════════════════════════════════╝

  docker-tips             # Muestra comandos básicos de Docker
  docker build -t nombre .
  docker run -p 8000:8000 nombre
  docker ps
  docker stop <id>
  docker exec -it <id> bash
'@,
@'
╔════════════════════════════════════╗
║   🐧 LINUX AVANZADO (WSL)          ║
╚════════════════════════════════════╝

  linux-lsof              # Ver qué proceso usa un puerto
  linux-strace [PID]      # Rastrear llamadas del sistema
  linux-htop              # Monitor visual de procesos
  linux-tmux              # Multiplexor de terminal
  linux-rsync [src] [dest]# Sincroniza carpetas
  linux-jq [json] [query] # Extrae datos de JSON
  linux-nc                # Abre servidor TCP en puerto 4444
  linux-iptables          # Reglas del firewall
  linux-findlogs          # Borra archivos .log
  linux-ss                # Conexiones de red activas
'@,
@'
╔════════════════════════════════════╗
║   🧬 LINUX EXTENDIDO (WSL)         ║
╚════════════════════════════════════╝

  linux-top, linux-df, linux-du [path]
  linux-free, linux-uptime, linux-uname
  linux-date, linux-cal, linux-whoami
  linux-id, linux-grep [pat] [file]
  linux-find [path] [name], linux-tail [file]
  linux-head [file], linux-cat [file]
  linux-touch [file], linux-mkdir [dir]
  linux-rm [target], linux-cp [src] [dest]
  linux-mv [src] [dest], linux-chmod [mode] [file]
  linux-chown [user] [file], linux-ps, linux-kill [pid]
  linux-cron-edit, linux-cron-list
  linux-env, linux-export [var] [val]
  linux-ping [host], linux-curl [url]
  linux-wget [url], linux-nmap [target]
  linux-traceroute [host], linux-hostname
  linux-man [cmd], linux-which [cmd]
  linux-history, linux-alias [alias] [cmd]
'@,
@'
╔════════════════════════════════════╗
║   💠 POWERSHELL BÁSICO             ║
╚════════════════════════════════════╝

  Get-Process, Get-Service
  Get-Help <comando>, Set-Alias gs Get-Service
  Get-Command, Get-History
  Start-Process notepad
  Test-Path <ruta>, Remove-Item <archivo>
'@,
@'
╔════════════════════════════════════╗
║   🎨 PERSONALIZACIÓN               ║
╚════════════════════════════════════╝

  ronald-mode             # Activa tu tema favorito
  set-theme <nombre>      # Cambia el tema visual
  list-themes             # Lista temas disponibles
  preview-theme <nombre>  # Previsualiza un tema
  font-guide              # Recomienda fuentes compatibles
'@,
@'
╔════════════════════════════════════╗
║   🚨 COMANDOS IMPORTANTES          ║
╚════════════════════════════════════╝

  run-port <puerto>       # Inicia servidor HTTP
  run-api                 # Corre servidor FastAPI
  ip-location [ip]        # Geolocaliza IP
  wifi-info               # Info de Wi-Fi
  net-check               # Test de conexión
  ip                      # Ver IP local
  port-list               # Puertos abiertos
  port-check [host] [port]# Verifica puerto
  port-util-list          # Utilidades de puertos
  new-tunnel [puerto]     # Túnel con Cloudflare
  dev-status              # Estado del entorno de desarrollo
'@
    )

    $colores = @("Magenta", "Yellow", "Green", "Cyan", "Blue", "DarkCyan", "DarkMagenta", "DarkYellow", "DarkGreen")
    $spinner = @("|", "/", "-", "\\")

    for ($i = 0; $i -lt $secciones.Count; $i++) {
        Clear-Host

        # Animación de carga
        for ($j = 0; $j -lt 10; $j++) {
            Write-Host "`rCargando sección $($i + 1)... $($spinner[$j % $spinner.Length])" -ForegroundColor DarkGray -NoNewline
            Start-Sleep -Milliseconds 100
        }

        Clear-Host
        $color = $colores[$i % $colores.Count]
        Write-Host $secciones[$i] -ForegroundColor $color
        Write-Host "`nPresiona [Enter] para continuar..." -ForegroundColor DarkGray
        [void][System.Console]::ReadLine()
    }

    Clear-Host
    Write-Host "✅ ¡Todos los comandos han sido mostrados!" -ForegroundColor Green
}
function push-code {
    $steps = @(
        @{msg="📦 Agregando cambios al área de staging..."; cmd="git add ."; color="Yellow"},
        @{msg="📝 Realizando commit: 'actualización rápida'..."; cmd='git commit -m "actualización rápida"'; color="Cyan"},
        @{msg="🚀 Enviando cambios al repositorio remoto..."; cmd="git push"; color="Green"}
    )

    $spinner = @("|", "/", "-", "\\")
    $i = 0

    foreach ($step in $steps) {
        Write-Host "`n$($step.msg)" -ForegroundColor $step.color

        # Animación de carga
        for ($j = 0; $j -lt 10; $j++) {
            Write-Host "`r[$($spinner[$j % $spinner.Length])] Procesando..." -ForegroundColor DarkGray -NoNewline
            Start-Sleep -Milliseconds 100
        }

        # Ejecutar comando
        try {
            Invoke-Expression $step.cmd
        } catch {
            Write-Host "`n❌ Error al ejecutar: $($step.cmd)" -ForegroundColor Red
            return
        }

        Write-Host "`n✅ Comando ejecutado con éxito: $($step.cmd)" -ForegroundColor Green
    }
}
function subirRepo {
    param(
        [string]$mensaje,
        [string]$link
    )

    if (-not $mensaje -or -not $link) {
        Write-Host "❌ Error: Debes proporcionar un mensaje de commit y el link del repositorio." -ForegroundColor Red
        return
    }

    $steps = @(
        @{msg="🔧 Inicializando repositorio local..."; cmd="git init"; color="Yellow"},
        @{msg="📦 Agregando archivos al staging..."; cmd="git add ."; color="Cyan"},
        @{msg="📝 Realizando commit: '$mensaje'..."; cmd="git commit -m `"$mensaje`""; color="Green"},
        @{msg="🌿 Estableciendo rama principal (main)..."; cmd="git branch -M main"; color="DarkYellow"},
        @{msg="🔗 Enlazando repositorio remoto..."; cmd="git remote add origin $link"; color="DarkCyan"},
        @{msg="🚀 Enviando código a GitHub..."; cmd="git push -u origin main"; color="Magenta"}
    )

    $spinner = @("⠋","⠙","⠹","⠸","⠼","⠴","⠦","⠧","⠇","⠏")

    foreach ($step in $steps) {
        Write-Host "`n$($step.msg)" -ForegroundColor $step.color

        # Animación tipo web loader
        for ($i = 0; $i -lt 12; $i++) {
            Write-Host "`r$($spinner[$i % $spinner.Length]) Procesando..." -ForegroundColor DarkGray -NoNewline
            Start-Sleep -Milliseconds 100
        }

        try {
            Invoke-Expression $step.cmd
            Write-Host "`n✅ Completado: $($step.cmd)" -ForegroundColor Green
        } catch {
            Write-Host "`n❌ Error al ejecutar: $($step.cmd)" -ForegroundColor Red
            return
        }
    }

    Write-Host "`n🎉 ¡Repositorio subido con éxito a GitHub!" -ForegroundColor Cyan
    Write-Host "🌐 Link remoto: $link" -ForegroundColor DarkGray
}

function api-fast {
    @"
🔹 FastAPI:
  uvicorn main:app --reload
  @app.get('/')
  @app.post('/crear')
  from fastapi import FastAPI
  from pydantic import BaseModel
"@ | Write-Host -ForegroundColor Cyan
}
function run-api {
    Clear-Host

    $ascii = @'
 __________________________________                                          DataBase
|  ______________________________  |                                     _________________
| |                              | |  .   .       .                     |\_______________/|
| |           ___  _ _           | |        .  .                        |\_______________/|
| |     /\   |   |  |            | | . : .. : .   .        .            |\_______________/|
| |    /__\  |___|  |            | |     :      .     :   .   .         |\_______________/|
| |   /    \ |     _|_           | |  .  .     :  .  .    .             |\_______________/|
| |                              | |                                    |\_______________/|
| |______________________________| |                                    |\_______________/|
|__________________________________|                                            ▲
                |  |                                                          │
          ______|  |______                                              FastAPI Models
        |_________________|                                             Pydantic BaseModel
'@

    $steps = @(
        "🔧 Preparando entorno virtual...",
        "📦 Cargando dependencias...",
        "🧠 Inicializando FastAPI...",
        "🔥 Ejecutando Uvicorn con recarga activa..."
    )

    Write-Host $ascii -ForegroundColor Green

    foreach ($step in $steps) {
        Write-Host $step -ForegroundColor Cyan
        Start-Sleep -Milliseconds 500
    }

    Write-Host "`n🚀 Lanzando servidor FastAPI..." -ForegroundColor Green
    python -m uvicorn main:app --reload
}

function sqlite-guide {
    @"
🔹 SQLite:
  sqlite3 database.db
  .tables
  SELECT * FROM tabla;
  CREATE TABLE usuarios (...);
  INSERT INTO usuarios VALUES (...);
"@ | Write-Host -ForegroundColor Cyan
}

function docker-tips {
    @"
🔹 Docker:
  docker build -t nombre .
  docker run -p 8000:8000 nombre
  docker ps
  docker stop <id>
  docker exec -it <id> bash
"@ | Write-Host -ForegroundColor Cyan
}

function wifi-info {
    Write-Host "`n📡 Información de la conexión Wi-Fi actual:" -ForegroundColor Cyan
    netsh wlan show interfaces
    Get-NetIPAddress | Where-Object {$_.InterfaceAlias -like "*Wi-Fi*"}
}

function ip-location {
    param([string]$ip)
    $url = "https://ipinfo.io/$ip/json"
    try {
        $data = Invoke-RestMethod -Uri $url
        Write-Host "🌐 IP:" $data.ip
        Write-Host "📍 País:" $data.country
        Write-Host "🏙 Ciudad:" $data.city
        Write-Host "🗺 Región:" $data.region
        Write-Host "📌 Coordenadas:" $data.loc
        Write-Host "📡 ISP:" $data.org
    } catch {
        Write-Host "❌ No se pudo obtener ubicación para la IP: $ip"
    }
}

function linux-lsof { wsl lsof -i :8000 }
function linux-strace { param($pid) wsl strace -p $pid }
function linux-htop { wsl htop }
function linux-tmux { wsl tmux }
function linux-rsync { param($src, $dest) wsl rsync -avz $src $dest }
function linux-jq { param($json, $query) wsl bash -c "echo '$json' | jq '$query'" }
function linux-nc { wsl nc -lvp 4444 }
function linux-iptables { wsl sudo iptables -L -n -v }
function linux-findlogs { wsl bash -c "find . -name '*.log' | xargs rm" }
function linux-ss { wsl ss -tuln }

function system-info { Get-ComputerInfo }
function disk-usage { Get-PSDrive | Where-Object {$_.Provider -like "*FileSystem"} }
function recent-events { Get-EventLog -LogName System -Newest 20 }
function services-running { Get-Service | Where-Object {$_.Status -eq "Running"} }
function restart-service { param($name) Restart-Service -Name $name }
function stop-service { param($name) Stop-Service -Name $name }
function start-service { param($name) Start-Service -Name $name }

function new-script { param($name) New-Item "$name.ps1" -ItemType File }
function run-script { param($name) & "$name.ps1" }
function edit-script { param($name) code "$name.ps1" }
function list-functions { Get-Command -CommandType Function }
function list-aliases { Get-Alias }

function list-files { Get-ChildItem -Recurse }
function find-file { param($name) Get-ChildItem -Recurse | Where-Object {$_.Name -like "*$name*"} }
function delete-file { param($path) Remove-Item $path -Force }
function copy-file { param($src, $dest) Copy-Item $src -Destination $dest }
function move-file { param($src, $dest) Move-Item $src -Destination $dest }

function ping-host { param($host) Test-Connection $host -Count 4 }
function port-check { param($host, $port) Test-NetConnection -ComputerName $host -Port $port }
function dns-lookup { param($domain) Resolve-DnsName $domain }
function public-ip { Invoke-RestMethod -Uri "https://api.ipify.org?format=json" }

function firewall-rules { Get-NetFirewallRule }
function antivirus-status { Get-MpComputerStatus }
function scan-malware { Start-MpScan -ScanType FullScan }
function list-users { Get-LocalUser }
function list-groups { Get-LocalGroup }

function set-theme { param($theme) Set-PoshPrompt -Theme $theme }

function linux-top { wsl top }
function linux-df { wsl df -h }
function linux-du { param($path) wsl du -sh $path }
function linux-free { wsl free -h }
function linux-uptime { wsl uptime }
function linux-uname { wsl uname -a }
function linux-date { wsl date }
function linux-cal { wsl cal }
function linux-whoami { wsl whoami }
function linux-id { wsl id }
function linux-grep { param($pattern, $file) wsl grep "$pattern" "$file" }
function linux-find { param($path, $name) wsl find "$path" -name "$name" }
function linux-tail { param($file) wsl tail -n 20 "$file" }
function linux-head { param($file) wsl head -n 20 "$file" }
function linux-cat { param($file) wsl cat "$file" }
function linux-touch { param($file) wsl touch "$file" }
function linux-mkdir { param($dir) wsl mkdir -p "$dir" }
function linux-rm { param($target) wsl rm -rf "$target" }
function linux-cp { param($src, $dest) wsl cp -r "$src" "$dest" }
function linux-mv { param($src, $dest) wsl mv "$src" "$dest" }
function linux-chmod { param($mode, $file) wsl chmod "$mode" "$file" }
function linux-chown { param($user, $file) wsl chown "$user" "$file" }
function linux-ps { wsl ps aux }
function linux-kill { param($pid) wsl kill -9 $pid }
function linux-cron-edit { wsl crontab -e }
function linux-cron-list { wsl crontab -l }
function linux-env { wsl env }
function linux-export { param($var, $value) wsl export "$var=$value" }
function linux-ping { param($host) wsl ping -c 4 "$host" }
function linux-curl { param($url) wsl curl "$url" }
function linux-wget { param($url) wsl wget "$url" }
function linux-nmap { param($target) wsl nmap "$target" }
function linux-traceroute { param($host) wsl traceroute "$host" }
function linux-hostname { wsl hostname }
function linux-man { param($cmd) wsl man "$cmd" }
function linux-which { param($cmd) wsl which "$cmd" }
function linux-history { wsl history }
function linux-alias { param($alias, $cmd) wsl bash -c "alias $alias='$cmd'" }

function run-port {
  param($port)
  Write-Host "🚀 Servidor HTTP en puerto $port iniciado. https://localhost:$port" -ForegroundColor Green
    $spinner = @('⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏')
    $i = 0
    $antena = @(
        "   .               .",
        " .·  ·  .     .  ·  `.",
        " :  :  :  (¯)  :  :  :",
        " ·.  ·  · /¯\ ·  ·  .·",
        "   ·     /¯¯¯\     ·",
        "        /¯¯¯¯¯\"
        "       /¯¯¯¯¯¯¯\"
    )

    foreach ($line in $antena) {
        $styled = ""
        foreach ($char in $line.ToCharArray()) {
            if ($char -eq '.' -or $char -eq ':' -or $char -eq '·') {
                $styled += "`e[32m$char`e[0m"  # Verde
            } else {
                $styled += $char
            }
        }
        Write-Host $styled
    }
      python -m http.server $port
    while (-not $proc.HasExited) {
        Write-Host -NoNewline "`r$($spinner[$i]) Túnel activo... "
        Start-Sleep -Milliseconds 100
        $i = ($i + 1) % $spinner.Length
    }

    Write-Host "`r📴 Túnel cerrado.                          " -ForegroundColor Red

}

function port-list {
  Get-NetTCPConnection -State Listen |
    Select-Object LocalAddress, LocalPort, OwningProcess |
    Sort-Object LocalPort |
    ForEach-Object {
      $proc = Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue
      [PSCustomObject]@{
        Port     = $_.LocalPort
        Address  = $_.LocalAddress
        Process  = if ($proc) { $proc.ProcessName } else { "N/A" }
        PID      = $_.OwningProcess
      }
    } | Format-Table -AutoSize
}

function port-check {
  param (
    [string]$targetHost,
    [int]$port
  )
  if ($targetHost -eq "localhost" -or $targetHost -eq "127.0.0.1") {
    $active = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
    if ($active) {
      Write-Host "✅ El puerto local $port está ACTIVO (escuchando)" -ForegroundColor Green
    } else {
      Write-Host "❌ El puerto local $port está INACTIVO" -ForegroundColor Red
    }
  } else {
    try {
      $tcp = New-Object System.Net.Sockets.TcpClient
      $tcp.Connect($targetHost, $port)
      Write-Host "✅ El puerto $port en $targetHost está ABIERTO" -ForegroundColor Green
      $tcp.Close()
    } catch {
      Write-Host "❌ El puerto $port en $targetHost está CERRADO o inaccesible" -ForegroundColor Red
    }
  }
}

function port-util-list {
  $puertos = @(
    @{Puerto=22;   Uso="SSH (acceso remoto seguro)"},
    @{Puerto=80;   Uso="HTTP (web sin cifrar)"},
    @{Puerto=443;  Uso="HTTPS (web segura)"},
    @{Puerto=21;   Uso="FTP"},
    @{Puerto=25;   Uso="SMTP (correo saliente)"},
    @{Puerto=110;  Uso="POP3 (correo entrante)"},
    @{Puerto=143;  Uso="IMAP"},
    @{Puerto=3306; Uso="MySQL"},
    @{Puerto=5432; Uso="PostgreSQL"},
    @{Puerto=6379; Uso="Redis"},
    @{Puerto=27017;Uso="MongoDB"},
    @{Puerto=8000; Uso="Servidor web local (dev)"},
    @{Puerto=8080; Uso="HTTP alternativo / proxy"},
    @{Puerto=5000; Uso="Flask / FastAPI / dev"},
    @{Puerto=5500; Uso="VNC inverso / Live Server"}
  )
  $puertos | Sort-Object Puerto | Format-Table -AutoSize
}

function new-tunneld {
    param (
        [int]$port
    )
    Write-Host "🚀 Creando túnel de Cloudflare..." -ForegroundColor Green
    $proc = Start-Process cloudflared -ArgumentList "tunnel --url http://localhost:$port" -PassThru

    $spinner = @('⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏')
    $i = 0
    $antena = @(
        "   .               .",
        " .·  ·  .     .  ·  `.",
        " :  :  :  (¯)  :  :  :",
        " ·.  ·  · /¯\ ·  ·  .·",
        "   ·     /¯¯¯\     ·",
        "        /¯¯¯¯¯\"
        "       /¯¯¯¯¯¯¯\"
    )

    foreach ($line in $antena) {
        $styled = ""
        foreach ($char in $line.ToCharArray()) {
            if ($char -eq '.' -or $char -eq ':' -or $char -eq '·') {
                $styled += "`e[32m$char`e[0m"  # Verde
            } else {
                $styled += $char
            }
        }
        Write-Host $styled
    }
    while (-not $proc.HasExited) {
        Write-Host -NoNewline "`r$($spinner[$i]) Túnel activo... "
        Start-Sleep -Milliseconds 100
        $i = ($i + 1) % $spinner.Length
    }

    Write-Host "`r📴 Túnel cerrado.                          " -ForegroundColor Red
}

function new-tunnel {
    param (
        [int]$port,
        [string]$targetHost = "localhost"
    )

    if ($targetHost -eq "localhost" -or $targetHost -eq "127.0.0.1") {
        $active = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
        if ($active) {
            Write-Host "✅ El puerto local $port está ACTIVO (escuchando)" -ForegroundColor Green
            new-tunneld $port
        } else {
            Write-Host "❌ El puerto local $port está INACTIVO" -ForegroundColor Red
        }
    } else {
        try {
            $tcp = New-Object System.Net.Sockets.TcpClient
            $tcp.Connect($targetHost, $port)
            Write-Host "✅ El puerto $port en $targetHost está ABIERTO" -ForegroundColor Green
            new-tunneld $port
            $tcp.Close()
        } catch {
            Write-Host "❌ El puerto $port en $targetHost está CERRADO o inaccesible" -ForegroundColor Red
        }
    }
}

function check-tunnel-env {
    $missing = @()

    $wsl = Get-Command wsl -ErrorAction SilentlyContinue
    if (-not $wsl) {
        $missing += @{
            name = "WSL"
            install = "wsl --install"
        }
    }

    $cloudflared = Get-Command cloudflared -ErrorAction SilentlyContinue
    if (-not $cloudflared) {
        $missing += @{
            name = "Cloudflared"
            install = "Invoke-WebRequest https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe -OutFile cloudflared.exe"
        }
    }

    foreach ($item in $missing) {
        Write-Host "❌ No se ha encontrado $($item.name)" -ForegroundColor Red
        Write-Host "💡 Código de instalación: $($item.install)`n" -ForegroundColor DarkYellow
    }
}
check-tunnel-env

function dev-status {
    Write-Host "`n🧠 Estado del entorno de desarrollo:" -ForegroundColor Cyan

    # 1. Dependencias clave de Python
    Write-Host "`n📦 Dependencias de Python:" -ForegroundColor Yellow
    try {
        pip list | Select-String "fastapi|uvicorn|requests|sqlite|httpx|pydantic|python-dotenv"
    } catch {
        Write-Host "❌ pip no está disponible o falló." -ForegroundColor Red
    }

    # 2. Puertos activos con nombre de proceso
    Write-Host "`n🔌 Puertos activos:" -ForegroundColor Yellow
    Get-NetTCPConnection -State Listen |
    ForEach-Object {
        $proc = Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue
        [PSCustomObject]@{
            Port     = $_.LocalPort
            Address  = $_.LocalAddress
            Process  = if ($proc) { $proc.ProcessName } else { "N/A" }
            PID      = $_.OwningProcess
        }
    } | Sort-Object Port | Format-Table -AutoSize

    # 3. Servicios clave activos
    Write-Host "`n🧠 Servicios clave activos:" -ForegroundColor Yellow
    $targets = @("Docker","PostgreSQL","WSL","Windows Defender Firewall","Bluetooth","Audio","Network","Cloudflared")
    Get-Service | Where-Object {
        $_.Status -eq "Running" -and ($targets | ForEach-Object { $_ }) -contains $_.DisplayName
    } | Select-Object DisplayName, Status | Format-Table -AutoSize

    # 4. Información del sistema
    Write-Host "`n🖥️ Información del sistema:" -ForegroundColor Yellow
    try {
        $os = Get-CimInstance Win32_OperatingSystem
        $cpu = Get-CimInstance Win32_Processor
        $ramGB = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)

        Write-Host "🧬 OS: $($os.Caption) $($os.Version)" -ForegroundColor Gray
        Write-Host "🧠 CPU: $($cpu.Name)" -ForegroundColor Gray
        Write-Host "💾 RAM: $ramGB GB" -ForegroundColor Gray
    } catch {
        Write-Host "❌ No se pudo obtener información del sistema." -ForegroundColor Red
    }

    # 5. Red y Wi-Fi
    Write-Host "`n📡 Red y Wi-Fi:" -ForegroundColor Yellow
    try {
        netsh wlan show interfaces | Select-String "SSID|Signal|State"
        Get-NetIPAddress | Where-Object {$_.InterfaceAlias -like "*Wi-Fi*"} | Format-Table -AutoSize
    } catch {
        Write-Host "❌ No se pudo obtener información de red." -ForegroundColor Red
    }

    # 6. Herramientas disponibles
    Write-Host "`n🧰 Herramientas disponibles:" -ForegroundColor Yellow
    $tools = @("wsl", "docker", "git", "cloudflared", "python", "uvicorn")
    foreach ($tool in $tools) {
        if (Get-Command $tool -ErrorAction SilentlyContinue) {
            Write-Host "✅ $tool disponible" -ForegroundColor Green
        } else {
            Write-Host "❌ $tool no encontrado" -ForegroundColor Red
        }
    }

    Write-Host "`n✅ Diagnóstico completo finalizado." -ForegroundColor Green
}
