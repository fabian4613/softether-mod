# 1. Entramos a admin cmd

docker exec -it softether-vpn-server vpncmd

# 2. Establecer o cambiar password de admin srv

    # • ServerPasswordSet

# 3. Show list virtual hubs

    # • HubList
        # 3.2
            # Elije la opción 1 si estás conectando directamente al servidor
            # Ingresa la IP del servidor y el puerto si es necesario
            # Si se te solicita una contraseña y ya está establecida, ingrésala

            # Ahora, selecciona el hub virtual con el que deseas trabajar:
                # • Hub <nombre_del_hub>

# 4. Crear o Eliminar un Hub Virtual

    # • HubCreate <nombre_del_hub> – Crea un nuevo hub virtual.
    # • HubDelete <nombre_del_hub> – Elimina un hub virtual existente.

# 5. Administrar Usuarios y Grupos

    # 5.2
        # • GroupCreate
    # 5.3
        # • UserCreate <nombre_de_usuario> – Crea un nuevo usuario en el hub virtual.
        # • UserDelete <nombre_de_usuario> – Elimina un usuario del hub virtual.
        # • UserList – Muestra la lista de usuarios en el hub virtual.

# 6. Configurar Autenticación

    # • UserPasswordSet <nombre_de_usuario> – Establece o cambia la contraseña para un usuario.

# 7. Administrar Sesiones

    # • SessionList – Lista todas las sesiones activas en el hub virtual.
    # • SessionDisconnect <nombre_de_sesión> – Desconecta una sesión activa.

# 8. Configuración de IP y Gestión de DHCP

    # • SecureNatEnable – Activa la función NAT segura y el servidor DHCP en el hub virtual.
    # • SecureNatDisable – Desactiva la función NAT segura y el servidor DHCP.

# 9. Ver o Establecer Configuraciones de Políticas de Grupo

    # • PolicyList – Lista todas las políticas de grupo para un hub virtual.
    # • PolicySet <nombre_de_política> – Establece o cambia una política.

# 10. Ver Estadísticas y Estado del Servidor

    # • StatusGet – Muestra el estado actual del servidor o hub virtual.
    # • LogGet – Muestra los registros del servidor.

# 11. Gestión de Certificados

    # • ServerCertGet – Obtiene el certificado actual del servidor.
    # • ServerCertSet – Establece un nuevo certificado para el servidor.
