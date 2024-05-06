Feature: Como un usuario que me registro por primera vez en la aplicación "Aventones ITESO" quiero poder seleccionar mi tipo de perfil (conductor o pasajero), para poder acceder a las funcionalidades específicas de cada tipo de perfil y encontrar viajes que se ajusten a mis necesidades
    Requerimiento perfiles diferentes (conductor y pasajero)

Example: En el que el usuario puede ver la opción para seleccionar su tipo de perfil al registrarse en la aplicación
    Given estoy en la pantalla de resgistrarse en la aplicación
    When veo la opcion para seleccionar el tipo de perfil usuario 
    Then se muestra la opcion para seleccionar el tipo de perfil de usuario

Example: En el que el usuario no puede ver la opción para seleccionar su tipo de perfil al registrarse en la aplicación
    Given estoy en la pantalla de resgistrarse en la aplicación
    When no veo la opcion para seleccionar el tipo de perfil usuario 
    Then no se muestra la opcion para seleccionar el tipo de perfil de usuario

Example: En el que la aplicación ofrece la opción de perfil conductor
    Given estoy en la pantalla de resgistrarse en la aplicación
    When veo la opcion de perfil usuario conductor
    Then se muestra la opcion de perfil usuario conductor

Example: En el que la aplicación ofrece la opción de perfil pasajero
    Given estoy en la pantalla de resgistrarse en la aplicación
    When veo la opcion de perfil usuario pasajero
    Then se muestra la opcion de perfil usuario pasajero

Example: En el que el usuario selecciona la opción de perfil conductor
    Given estoy en la pantalla de resgistrarse en la aplicación
    When selecciono la opción de perfil conductor
    Then se selecciono la opción de perfil conductor

Example: En el que el usuario selecciona la opción de perfil pasajero
    Given estoy en la pantalla de resgistrarse en la aplicación
    When selecciono la opción de perfil pasajero
    Then se selecciono la opción de perfil pasajero

Example: En el que la aplicación guarda la selección del tipo de perfil conductor en el perfil de usuario
    Given estoy en la pantalla de resgistrarse en la aplicación
    When guardo la opción de perfil conductor
    Then se guarda la opción de perfil conductor

Example: En el que la aplicación guarda la selección del tipo de perfil pasajero en el perfil de usuario
    Given estoy en la pantalla de resgistrarse en la aplicación
    When guardo la opción de perfil pasajero
    Then se guarda la opción de perfil pasajero

Example: En el que la aplicación muestra la información y funcionalidades correspondientes al tipo de perfil conductor
    Given estoy en la pantalla de resgistrarse en la aplicación
    When veo la información y funcionalidades correspondientes al tipo de perfil conductor
    Then se muestra la información y funcionalidades correspondientes al tipo de perfil conductor

Example: En el que la aplicación muestra la información y funcionalidades correspondientes al tipo de perfil pasajero
    Given estoy en la pantalla de resgistrarse en la aplicación
    When veo la información y funcionalidades correspondientes al tipo de perfil pasajero
    Then se muestra la información y funcionalidades correspondientes al tipo de perfil pasajero