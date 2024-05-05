Feature: Como usuario de la plataforma, deseo poder guardar mis rutas frecuentes y sugerirlas a otros usuarios con destinos similares para facilitar la planificación de viajes y fomentar la colaboración.

  Scenario: En el que la aplicación proporciona una función para guardar rutas frecuentes
    Given El usuario está en su perfil de la aplicación
    When El usuario busca la opción para guardar rutas frecuentes
    Then La aplicación proporciona una función clara para guardar rutas frecuentes

  Scenario: En el que la aplicación no proporciona una función para guardar rutas frecuentes
    Given El usuario está en su perfil de la aplicación
    When El usuario busca la opción para guardar rutas frecuentes
    Then La aplicación no proporciona ninguna función para guardar rutas frecuentes

  Scenario: En el que las rutas frecuentes no son fáciles de acceder en el perfil de usuario
    Given El usuario está en su perfil de la aplicación
    When El usuario intenta acceder a sus rutas frecuentes
    Then Las rutas frecuentes no son fáciles de acceder en el perfil del usuario

  Scenario: En el que las rutas frecuentes son fáciles de acceder en el perfil de usuario
    Given El usuario está en su perfil de la aplicación
    When El usuario intenta acceder a sus rutas frecuentes
    Then Las rutas frecuentes son fáciles de acceder en el perfil del usuario

  Scenario: En el que la aplicación no sugiere las rutas frecuentes de un usuario a otros con rutas similares
    Given El usuario tiene rutas frecuentes guardadas en su perfil
    When Otro usuario busca rutas para un destino similar
    Then La aplicación no sugiere las rutas frecuentes del primer usuario al segundo usuario

  Scenario: En el que la aplicación sugiere las rutas frecuentes de un usuario a otros con rutas similares
    Given El usuario tiene rutas frecuentes guardadas en su perfil
    When Otro usuario busca rutas para un destino similar
    Then La aplicación sugiere las rutas frecuentes del primer usuario al segundo usuario

  Scenario: En el que los usuarios no tienen la opción de desactivar sugerencias de sus rutas frecuentes
    Given El usuario está en la configuración de su perfil
    When El usuario busca la opción para desactivar sugerencias de rutas frecuentes
    Then La aplicación no proporciona una opción para desactivar sugerencias de rutas frecuentes

  Scenario: En el que los usuarios tienen la opción de desactivar sugerencias de sus rutas frecuentes
    Given El usuario está en la configuración de su perfil
    When El usuario busca la opción para desactivar sugerencias de rutas frecuentes
    Then La aplicación proporciona una opción clara para desactivar sugerencias de rutas frecuentes