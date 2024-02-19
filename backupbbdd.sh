#!/bin/bash

# Obtener la fecha actual
fecha_actual=$(date +"%Y-%m-%d")

# Ejecutar el comando y asignar la fecha al nombre del archivo
#sudo docker export oracle19cc > "/backups/$fecha_actual.tar"

# Verificar si la exportación fue exitosa
if [ $? -eq 0 ]; then
    echo "Exportación completada con éxito."

    scp -i /scripts/llavesretopem.pem /backups/$fecha_actual.tar ubuntu@23.21.66.38:/home/ubuntu/
else
    echo "Error en la exportación."
fi
