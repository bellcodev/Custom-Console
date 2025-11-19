# Guia de "BlackTerminal"

## ¿Que es BlackTerminal?

<p> BlackTerminal es una herramienta de consola que permite a todo el que la use
disfrutar de una consola atractiva visualmente y util para hacer el trabajo de un
programador con la consola mucho mas facil. </p>

## ¿Que Incluye la Consola?

<p> Tiene una interfaz facil de usar, colorida y decorada. </p>
<p> El comando "commands" ofrece una lista de comandos con diferentes secciones </p>

| Seccion | Descripcion |
|---------|-------------|
| Comandos Utiles | Una lista de comandos para usar cada dia  |
| Git | Una lista de comandos para trabajar con git |
| FastAPI | Una lista de comandos utiles para FastAPI |
| SQLite | Una lista de comandos para trabajar con la BD SQLite |
| Docker | Muestra una lista de comandos basicos de Docker |
| Linux (WSL) | Muestra una lista de comandos de linux para utilizar con WSL |
| Linux Extend. | Aun mas comandos de linux utilizando WSL |
| PowerShell | Comandos originales de PowerShell |
| Personalizacion | Comandos para cambiar la interfaz de la consola |
| Comandos Importantes | Una lista de comandos para utilizar dia a dia para el backend |
<br> <br>
## Ejemplos de Comandos

### Lanzar una Web con un Tunel
Utiliza el tunel *Cloudflared* para lanzar un link publico
y gratuito

Ir a la carpeta del index.html <br>
``` cd "Ruta\de\la\carpeta"```
<br><br>
Abrir puerto <br>
``` run-port <puerto> ``` **Nota**: Para utilizar el puerto correcto buscar la lista de puertos con ``` port-util-list ```
<br><br>
Lanzar la web <br>
``` new-tunnel <puerto> ``` **Nota**: Se debe hacer con el puerto anterior abierto sino saltara "❌ El puerto local <puerto> está INACTIVO"

### Ver informacion sobre el dispositivo

Revisar tu ip y los datos sobre la conexion<br>
```ip``` <br>
``` wifi-info ```
<br><br>
Ver todos los procesos de tu pc en tiempo real <br>
``` linux-htop ```
<br><br>
Ver el estado de tu entorno de desarrollo <br>
``` dev-status ``` <br>
**Hay mas comandos para ver toda tu info y saber si estas seguro**
<br><br><br>
**Esos solamente son ejemplos y una pequeña ayuda, con imaginacion y practica puedes hacer tu trabajo con la consola mucho mas facil.**

Dejame una estrellita en el repo😉, no te cuesta nada

Hecho por <a href="https://instagram.com/whoisronystar">Ronald🧑‍💻</a>
