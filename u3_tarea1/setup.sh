#!/bin/bash

# Verificar e instalar dependencias si no están instaladas
install_if_missing() {
    if ! command -v "$1" &> /dev/null; then
        echo "Instalando $1..."
        sudo apt-get install -y "$1"
    else
        echo "$1 ya está instalado."
    fi
}

# Actualizar la lista de paquetes
sudo apt-get update

# Instalar make y wget si no están instalados
install_if_missing make
install_if_missing wget

# Descargar e instalar Hugo si no está instalado
if ! command -v hugo &> /dev/null; then
    echo "Descargando e instalando Hugo..."
    wget https://github.com/gohugoio/hugo/releases/download/v0.143.1/hugo_0.143.1_linux-amd64.deb
    sudo dpkg -i hugo_0.143.1_linux-amd64.deb || {
        echo "Instalando dependencias faltantes para Hugo..."
        sudo apt-get install -f -y
    }
    rm hugo_0.143.1_linux-amd64.deb # Limpiar el archivo descargado
else
    echo "Hugo ya está instalado."
fi

echo "Todas las herramientas necesarias están instaladas."