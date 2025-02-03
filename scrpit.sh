#!/bin/bash

# Verifica si el archivo ips.txt existe
if [ ! -f "ips.txt" ]; then
    echo "El archivo ips.txt no se encuentra en el directorio actual."
    exit 1
fi

# Lee las IPs desde el archivo y ejecuta ping
while IFS= read -r ip
do
    if [ ! -z "$ip" ]; then
        echo "Haciendo ping a $ip..."
        ping -c 50 "$ip"
        echo "-----------------------------"
    fi
done < "ips.txt"
