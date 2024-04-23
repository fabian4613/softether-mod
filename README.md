# Administracion de SoftEther VPN

## Descargar SoftEther VPN Client

Para conectarnos a la VPN como cliente, lea el siguiente instructivo: [Instructivo](https://docs.google.com/document/d/1wRSE3o7yA0y0TojQzObYo0xIICd70afu1tTfUH-VLUQ/edit?usp=sharing)

## SoftEther VPN Server Manager

SoftEher VPN Server Manager ofrece una interfaz gráfica amigable enfocada a la administracion de la VPN de manera remota.

Puedes descargar esta herramienta en el siguiente enlace: [Descargar](https://www.softether-download.com/en.aspx?product=softether)

Existen credenciales especificas para el administrador, cuando nos conectamos nos pedirá contraseña del admin.

## En Docker

```bash
# Entramos a admin cmd
    docker exec -it <nombre del contenedor> vpncmd
#   - Elije la opción 1 si estás conectando directamente al servidor
#   - Ingresa la IP del servidor y el puerto si es necesario, si estas usando docker exec, simplemente omite este paso.
#   - Si se te solicita una contraseña y ya está establecida, ingrésala.
#   - Ahora, selecciona el hub virtual con el que deseas trabajar, por defecto es: DEFAULT    
```
```bash 
# Listar los Hubs.
    HubList 
``` 
```bash
# Selecciona el Hub a administrar.
    Hub <nombre_del_hub>
```

```bash
# Crear o Eliminar un Hub Virtual
     • HubCreate <nombre_del_hub> – Crea un nuevo hub virtual.
     • HubDelete <nombre_del_hub> – Elimina un hub virtual existente.
```
```bash
# Administrar Usuarios y Grupos
    # 5.2
         • GroupCreate
    # 5.3
         • UserCreate <nombre_de_usuario> – Crea un nuevo usuario en el hub virtual.
         • UserDelete <nombre_de_usuario> – Elimina un usuario del hub virtual.
         • UserList – Muestra la lista de usuarios en el hub virtual.
```

```bash
# Configurar Autenticación
     • UserPasswordSet <nombre_de_usuario> – Establece o cambia la contraseña para un usuario.
```

```bash
# Administrar Sesiones
     • SessionList – Lista todas las sesiones activas en el hub virtual.
     • SessionDisconnect <nombre_de_sesión> – Desconecta una sesión activa.
```

```bash
# Configuración de IP y Gestión de DHCP

     • SecureNatEnable – Activa la función NAT segura y el servidor DHCP en el hub virtual.
     • SecureNatDisable – Desactiva la función NAT segura y el servidor DHCP.
```

```bash
# Ver o Establecer Configuraciones de Políticas de Grupo
     • PolicyList – Lista todas las políticas de grupo para un hub virtual.
     • PolicySet <nombre_de_política> – Establece o cambia una política.
```

```bash
# Ver Estadísticas y Estado del Servidor
     • StatusGet – Muestra el estado actual del servidor o hub virtual.
     • LogGet – Muestra los registros del servidor.
```

```bash
# Gestión de Certificados
     • ServerCertGet – Obtiene el certificado actual del servidor.
     • ServerCertSet – Establece un nuevo certificado para el servidor.
```