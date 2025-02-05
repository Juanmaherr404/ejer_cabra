#!/bin/bash

# Solicitar el nombre de usuario
echo -n "Ingrese el nombre de usuario: "
read username

# Verificar si el usuario existe
if id "$username" &>/dev/null; then
    # Solicitar la nueva contraseña
echo -n "Ingrese la nueva contraseña: "
    read -s password
    echo
    echo -n "Confirme la nueva contraseña: "
    read -s password_confirm
    echo
    
    # Verificar si las contraseñas coinciden
    if [ "$password" == "$password_confirm" ]; then
        echo -e "$password\n$password" | sudo passwd "$username"
        echo "Contraseña cambiada exitosamente para el usuario $username."
    else
        echo "Las contraseñas no coinciden. Intente nuevamente."
    fi
else
    echo "El usuario $username no existe."
fi
