#!/bin/bash

# Obtener información del sistema y guardarla en un archivo de texto

# Nombre del archivo de salida
archivo_salida="informacion_sistema.txt"

# Obtener información del sistema y escribirla en el archivo de salida
echo "Información del Sistema:" > "$archivo_salida"
echo "======================" >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Fecha y hora actual:" >> "$archivo_salida"
date >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Información del kernel:" >> "$archivo_salida"
uname -a >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Información de la memoria:" >> "$archivo_salida"
free -h >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Información de la CPU:" >> "$archivo_salida"
lscpu >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Información del disco:" >> "$archivo_salida"
df -h >> "$archivo_salida"
echo "" >> "$archivo_salida"
echo "Información de la red:" >> "$archivo_salida"
ip a >> "$archivo_salida"

echo "La información del sistema se ha guardado en '$archivo_salida'."
