#!/bin/bash

# Configuración inicial
SERVER_IP="localhost"  # Cambia esto por la IP de tu servidor VPN
SERVER_PORT="443"       # Cambia esto por el puerto de tu servidor, si es necesario
HUB_NAME="DEFAULT"      # Cambia esto por el nombre de tu Virtual Hub

# Lista de usuarios a crear: username:password:group
USERS=("")

# Comando de conexión a vpncmd
VPNCMD="vpncmd $SERVER_IP:$SERVER_PORT /SERVER /CMD"

# Seleccionar el Virtual Hub
$VPNCMD Hub $HUB_NAME

# Crear cada grupo y usuario
for user_pass_group in "${USERS[@]}"; do
    IFS=':' read -r username password group <<< "$user_pass_group"
    
    # Crear el grupo si no existe (opcional, comenta esta línea si los grupos ya deberían existir)
    $VPNCMD GroupCreate $group /REALNAME:none /NOTE:"GCABA_MSGC_SSPSGER_DGSISAN-DevOps2024"

    # Crear el usuario
    $VPNCMD UserCreate $username /GROUP:$group /REALNAME:none /NOTE:"Automatically created user"
    
    # Establecer contraseña del usuario
    $VPNCMD UserPasswordSet $username /PASSWORD:$password
done

echo "Usuarios y grupos creados exitosamente."
