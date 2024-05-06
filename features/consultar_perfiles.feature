Feature: Como un usuario que busca compañeros de viaje o que desea conocer a otros usuarios de la aplicación quiero poder consultar los perfiles de otros usuarios para obtener información sobre ellos y sus viajes, para encontrar usuarios con intereses compatibles y/o para contactarlos y coordinar un viaje.
    Requerimiento para consultar perfiles de usuarios

Example: En el que el usuario puede acceder a la sección de perfil de usuarios
    Given estoy en el incio de la aplicación AventonesITESO
    When doy clic en "Perfiles" 
    Then visualiza perfiles de la aplicación

Example: En el que el usuario no puede acceder a la sección de perfil de usuarios
    Given estoy en el incio de la aplicación AventonesITESO
    When doy clic en "Perfiles" 
    Then no visualiza perfiles de la aplicación

Example: En el que el usuario puede buscar perfiles por nombre de usuario
    Given estoy en la barra de buscada en la aplicación AventonesITESO
    When escribo un nombre de usuario en el campo de búsqueda
    Then ve los resultados correspondientes al nombre de usuario introducido

Example: En el que el usuario puede buscar perfiles por intereses
    Given estoy en la barra de buscada en la aplicación AventonesITESO
    When escribo un interes de usuario en el campo de búsqueda
    Then ve los resultados correspondientes al interes de usuario introducido

Example: En el que el usuario puede buscar perfiles por viajes realizados
    Given estoy en la barra de buscada en la aplicación AventonesITESO
    When escribo un viaje realizado de usuario en el campo de búsqueda
    Then ve los resultados correspondientes al viaje realizado de usuario introducido

Example: En el que el usuario puede visualizar la información del perfil de otro usuario, incluyendo nombre, foto, intereses y viajes realizados.
    Given estoy en una página de perfiles
    When doy click en el detalle del perfil de usuario
    Then visualiza la información del perfil de otro usuario, incluyendo nombre, foto, intereses y viajes realizados.

Example: En el que el usuario no puede visualizar la información del perfil de otro usuario, incluyendo nombre, foto, intereses y viajes realizados.
    Given estoy en una página de perfiles
    When doy click en el detalle del perfil de usuario
    Then no visualiza la información del perfil de otro usuario, incluyendo nombre, foto, intereses y viajes realizados.

Example: En el que el usuario puede enviar mensajes a otros usuarios desde su perfil
    Given estoy en el chat privado de la aplicación AventonesITESO
    When envío un mensaje a otro usuario
    Then envía el mensaje con éxito

Example: En el que el usuario no puede enviar mensajes a otros usuarios desde su perfil
    Given estoy en el chat privado de la aplicación AventonesITESO
    When envío un mensaje a otro usuario
    Then no envía el mensaje con éxito

Example: En el que el usuario recibe notificaciones cuando recibe un nuevo mensaje
    Given estoy en el chat privado de la aplicación AventonesITESO
    When recibo una notificacion que me llego un nuevo mensaje
    Then vizualiza la notificacion de aviso de nuevo mensaje

Example: En el que el usuario no recibe notificaciones cuando recibe un nuevo mensaje
    Given estoy en el chat privado de la aplicación AventonesITESO
    When recibo una notificacion que me llego un nuevo mensaje
    Then no vizualiza la notificacion de aviso de nuevo mensaje