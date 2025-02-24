#!/bin/bash

# Actualizar el sistema e instalar dependencias
apt-get update && apt-get install -y make wget

## Bajar la última versión de 
wget https://github.com/gohugoio/hugo/releases/download/v0.143.1/hugo_0.143.1_linux-amd64.deb
dpkg -i hugo_0.143.1_linux-amd64.deb

# Ejecutar el comando make build para reproducir el error
make build



