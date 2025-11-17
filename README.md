# PowerShell
![Imagen](https://i.imgur.com/3U845ac.png)
## Descripcion
Este script es para personalizar la terminal, aparte de hacerla muy atractiva visualmente tambien le agrega comandos que facilitan trabajar con el backend.
### Paso a Paso
- Descarga los archivos (y tambien oh-my-posh desde microsoft store)
- Crea una carpeta en C:
- Copia la ubicacion
- En la barra de busqueda de windows busca "Variables de entorno"
- En la seccion variables del sistema busca path, presionalo dos veces y agrega tu ubicacion
- Cierra todo y dentro de la carpeta pega el archivo que se llama "paradox.omp.json"
- Instalate una fuente compatible
- Ahora, abre el archivo que descargaste llamado Microsoft.PowerShell_Profile y copia el codigo
- Abre tu consola y escribe ``` notepad $PROFILE ```
- Dentrode ese archivo borra todo y pega el codigo que copiaste
- Antes de guardar los cambios vete al inicio de codigo y cambia en la primera linea ``` $env:POSH_THEMES_PATH = "C:\tools\oh-my-posh" ``` la ubicacion "C:tools\oh-my-posh" por la ubicacion en la que guardaste el archivo paradox.omp.json
**Hasta ahora ya tienes el tema de la consola y la mayoria de los comandos!!**(si no te quedo muy claro lo del tema busca el curso de HolaMundo de personalizar la consola)
- Instala Cloud Flared para los tuneles de webs y backend
- Instala WSL desde la consola con el comando ``` wsl --install ```
**Ya la tienes lista, ahora solo entra a la consola y la veras como la de la imagen**

### Como lo utilizo?
El codigo no es solo para hacerla mas agradable visualmente sino que tambien viene con comandos propios
Solo escribe commands y dale a enter, te saldra una lista de todos los comandos(la mayoria de backend)
run-api para lanzar un servidor de fastapi
run-port [puerto] para abrir un puerto como 8000
new-tunnel [puerto] para lanzar en un tunel gratuito tu web
y mas de 60-80 comandos utiles(tambien de linux)

**NOTA IMPORTANTE**: En el repositorio viene incluido un MarkDown que contiene una guia completa de todos y cada uno de los comandos con descripcion y ejemplo
