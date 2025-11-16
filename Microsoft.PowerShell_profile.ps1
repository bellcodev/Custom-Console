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
🧠 COMANDOS ÚTILES 💻

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
🔹 Git:
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
🔹 FastAPI:
  api-fast                # Muestra ejemplos de rutas y uso
  uvicorn main:app --reload
  @app.get("/")
  @app.post("/crear")
  from fastapi import FastAPI
  from pydantic import BaseModel
'@,
@'
🔹 SQLite:
  sqlite-guide            # Muestra comandos útiles de SQLite
  sqlite3 database.db
  .tables
  SELECT * FROM tabla;
  CREATE TABLE usuarios (...);
  INSERT INTO usuarios VALUES (...);
'@,
@'
🔹 Docker:
  docker-tips             # Muestra comandos básicos de Docker
  docker build -t nombre .
  docker run -p 8000:8000 nombre
  docker ps
  docker stop <id>
  docker exec -it <id> bash
'@,
@'
🔹 Linux Avanzado (WSL):
  linux-lsof              # Ver qué proceso usa un puerto
  linux-strace [PID]      # Rastrear llamadas del sistema de un proceso
  linux-htop              # Monitor visual de procesos
  linux-tmux              # Multiplexor de terminal persistente
  linux-rsync [src] [dest]# Sincroniza carpetas locales/remotas
  linux-jq [json] [query] # Extrae datos de JSON desde terminal
  linux-nc                # Abre servidor TCP en puerto 4444
  linux-iptables          # Muestra reglas del firewall
  linux-findlogs          # Borra todos los archivos .log del directorio
  linux-ss                # Ver conexiones de red, puertos abiertos, servicios activos
'@,

@'
🔹 Linux Avanzado (WSL) — Extendido:
  linux-top               # Monitor de procesos en tiempo real
  linux-df                # Uso de disco por partición
  linux-du [path]         # Tamaño de carpeta específica
  linux-free              # Uso de memoria RAM y swap
  linux-uptime            # Tiempo activo del sistema
  linux-uname             # Info del kernel y sistema
  linux-date              # Fecha y hora actual
  linux-cal               # Calendario mensual
  linux-whoami            # Usuario actual
  linux-id                # UID, GID y grupos del usuario
  linux-grep [pat] [file] # Buscar texto en archivo
  linux-find [path] [name]# Buscar archivos
  linux-tail [file]       # Últimas líneas de archivo
  linux-head [file]       # Primeras líneas de archivo
  linux-cat [file]        # Mostrar contenido de archivo
  linux-touch [file]      # Crear archivo vacío
  linux-mkdir [dir]       # Crear carpeta
  linux-rm [target]       # Eliminar archivo o carpeta
  linux-cp [src] [dest]   # Copiar archivos
  linux-mv [src] [dest]   # Mover archivos
  linux-chmod [mode] [file]# Cambiar permisos
  linux-chown [user] [file]# Cambiar propietario
  linux-ps                # Procesos activos
  linux-kill [pid]        # Terminar proceso
  linux-cron-edit         # Editar tareas programadas
  linux-cron-list         # Ver tareas programadas
  linux-env               # Variables de entorno
  linux-export [var] [val]# Definir variable
  linux-ping [host]       # Ping desde WSL
  linux-curl [url]        # Petición HTTP
  linux-wget [url]        # Descargar archivo
  linux-nmap [target]     # Escaneo de red
  linux-traceroute [host] # Ruta de red
  linux-hostname          # Nombre del host
  linux-man [cmd]         # Manual de comandos
  linux-which [cmd]       # Ruta de comando
  linux-history           # Historial de comandos
  linux-alias [alias] [cmd]# Crear alias
'@,
@'
🔹 PowerShell Básico:
  Get-Process             # Ver procesos activos
  Get-Service             # Ver servicios del sistema
  Get-Help <comando>      # Obtener ayuda detallada
  Set-Alias gs Get-Service# Crear alias para comandos
  Get-Command             # Ver todos los comandos disponibles
  Get-History             # Ver historial de comandos
  Start-Process notepad   # Abrir una app desde consola
  Test-Path <ruta>        # Verifica si existe un archivo o carpeta
  Remove-Item <archivo>   # Elimina un archivo
'@,
@'
🔹 Personalización:
  set-theme <nombre>      # Cambia el tema visual
  list-themes             # Lista temas disponibles
  preview-theme <nombre>  # Previsualiza un tema
  font-guide              # Recomienda fuentes compatibles
'@,
@'
🔹 Comandos Importantes:
  run-port <puerto>       # Inicia un servidor HTTP en el puerto especificado
  run-api                 # Corre un servidor local de FastAPI
  ip-location [ip]        # Geolocaliza una IP
  wifi-info               # Muestra datos sobre la Wi-Fi y conexión
  net-check               # Probar conexión a Google
  ip                      # Ver IP local
  port-list               # Lista de puertos abiertos
  port-check [host] [port]# Comprobar si un puerto está abierto
  port-util-list          # Lista de utilidades de puertos
  new-tunnel [puerto]     # Crea un túnel de Cloudflare
'@
    )

    foreach ($seccion in $secciones) {
        Clear-Host
        Write-Host $seccion -ForegroundColor Cyan
        Write-Host "`nPresiona [Enter] para continuar..." -ForegroundColor DarkGray
        [void][System.Console]::ReadLine()
    }

    Write-Host "`n✅ Todos los comandos han sido mostrados." -ForegroundColor Green
}
function push-code {
    git add .
    git commit -m "actualización rápida"
    git push
}
function subirRepo {
    param([string]$mensaje, [string]$link)
    git init
    git add .
    git commit -m "$mensaje"
    git branch -M main
    git remote add origin $link
    git push -u origin main
    Write-Host "✅ Repositorio subido con éxito" -ForegroundColor Green
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
    Write-Host "🚀 Lanzando servidor FastAPI..." -ForegroundColor Green
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
  python -m http.server $port
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
