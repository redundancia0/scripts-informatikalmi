#!/bin/bash

# Capturar tráfico de red usando tcpdump
sudo tcpdump -i any -c 1000 -w capture.pcap &>/dev/null &

# Escanear la red local con Nmap
echo "Escaneando la red local..."
sudo nmap -sP 192.168.1.0/24

# Monitorear el tráfico en tiempo real con iftop
echo "Monitoreando el tráfico en tiempo real (presiona 'q' para salir)..."
sudo iftop

# Eliminar el archivo de captura después del análisis
rm capture.pcap
