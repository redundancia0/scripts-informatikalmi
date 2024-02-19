#!/bin/bash

# Actualizar lista de paquetes
sudo apt update

# Buscar actualizaciones disponibles
actualizaciones=$(sudo apt list --upgradable 2>/dev/null)

# Verificar si hay actualizaciones disponibles
if [ -n "$actualizaciones" ]; then
	echo "Se encontraron actualizaciones disponibles:"
	echo "$actualizaciones"
    
	# Descargar actualizaciones
	sudo apt upgrade -y
	echo "Las actualizaciones se han descargado correctamente."
else
	echo "No se encontraron actualizaciones disponibles."
fi
