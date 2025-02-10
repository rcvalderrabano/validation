--- 
title: "README" 
date: 2025-02-08 15:04:07 
author:  "Roberto Cruz Valderrábano"
--- 


# Antecedentes
El siguiente proyecto contiene el código de un sitio web estatico generado con Hugo. Este sitio fue solicitado por el área de comunicación de la empresa Tec-Net, S.A. y, se decidió ocupar esta tecnología porque el equipo ya esta acostumbrado a trabajar con lenguaje Markdown  en lugar de desarrollarlo utilizando HTML y CSS.

## Prerequistos
Para trabajar con este proyecto, necesitarás instalar las siguientes herramientas:

1. **Hugo**: El generador de sitios estáticos.
   - Instalación: Dependiendo el sistema operativo será el archivo que tienes que descargar de la siguiente dirección.  https://gohugo.io/installation/

2. **Make**: Herramienta para automatizar tareas.
     - Instalación:
     - En Linux: "sudo apt install make"
     - En Windows: Usa WSL

3. **Git**: Para el control de versiones.
   - Es importante que siempre se lleve el control de versiones de los proyectos por lo que se recomienda utilizar Git para gestionarla.
   - Instalación: Sigue las instrucciones en [https://git-scm.com/downloads](https://git-scm.com/downloads).

4. **Tema Ananke**: El proyecto ya cuenta con el tema Ananké el cual fue descargado de https://themes.gohugo.io/themes/gohugo-theme-ananke/



## Ciclo de vida

El ciclo de vida del proyecto se gestiona a través de un `Makefile` que incluye los siguientes pasos:
1. **Build**: Genera el sitio web en el directorio `dist/`.
   - Comando: `make build`

2. **Clean**: Elimina el contenido del directorio `dist/`.
   - Comando: `make clean`

3. **Post**: Crea una nueva entrada de blog en el directorio `content/post/`. El nombre del archivo y el título se derivan de las variables de entorno `POST_TITLE` y `POST_NAME`.
   - Comando: `make post POST_NAME="Tarea_01" POST_TITLE="Esto es una prueba"`
   - Nota:  Es importante que el name no lleve espacios ya que causa problema en la generación del archivo md y, para cumplir con la notación del lenguaje.

4. **Help**: Muestra una lista de los objetivos disponibles y su uso.
   - Comando: `make help`


## Uso del archivo Makefile

El `Makefile` incluye los siguientes objetivos:

- **build**: Genera el sitio web en el directorio `dist/`.
- **clean**: Limpia el directorio `dist/`.
- **post**: Crea una nueva entrada de blog.
- **help**: Muestra la lista de objetivos y su uso.

Para ver la lista completa de objetivos y su descripción, ejecuta:
   -make help