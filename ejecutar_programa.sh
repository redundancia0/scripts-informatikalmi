#!/bin/bash

ruta_al_jar="/home/ubuntu/informatikalmi-java.jar"

java -jar "$ruta_al_jar”

tar -czvf "$directorio_destino/$nombre_archivo" "$directorio”
