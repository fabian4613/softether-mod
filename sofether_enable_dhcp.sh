#!/bin/bash

# Configuración inicial
SERVER_IP="localhost"  # Cambia esto por la IP de tu servidor VPN
SERVER_PORT="443"       # Cambia esto por el puerto de tu servidor, si es necesario
HUB_NAME="DEFAULT"      # Cambia esto por el nombre de tu Virtual Hub

# Config DHCP

# RANGO IP

START_RANGO_IP=192.168.30.50
END_RANGO_IP=192.168.30.69
TIMEOUT_IP=7200
LOG=yes # yes or no

# Comando de conexión a vpncmd
VPNCMD="vpncmd $SERVER_IP:$SERVER_PORT /SERVER /CMD"

# Seleccionar el Virtual Hub
$VPNCMD Hub $HUB_NAME


    $VPNCMD SecureNatEnable
    $VPNCMD DhcpSet /START:$START_RANGO_IP /END:$END_RANGO_IP /MASK:255.255.255.0 /EXPIRE:$TIMEOUT_IP /GW:192.168.30.1 /DNS:8.8.8.8 /DNS2:8.8.4.4 /DOMAIN:none /LOG:$LOG
