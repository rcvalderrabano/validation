#!/bin/bash

# Actualizar el sistema e instalar dependencias
apt-get update && apt-get install -y hugo make

# Ejecutar el comando make build para reproducir el error
make build
