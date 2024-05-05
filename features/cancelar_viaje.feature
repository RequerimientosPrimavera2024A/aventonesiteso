Feature: Como un usuario de la plataforma de compartición de viajes, quiero poder cancelar un viaje programado para poder gestionar mis planes de viaje de manera flexible.

  Scenario: En el que el usuario tiene acceso a la lista de viajes programados
    Given El usuario ha iniciado sesión en la aplicación
    When El usuario accede a la lista de viajes programados
    Then El usuario puede ver los viajes programados en su perfil

  Scenario: En el que el usuario no tiene acceso a la lista de viajes programados
    Given El usuario ha iniciado sesión en la aplicación
    When El usuario intenta acceder a la lista de viajes programados
    Then La aplicación muestra un mensaje de error indicando que el usuario no tiene viajes programados

  Scenario: En el que la aplicación incluye una opción fácil pero no clara para cancelar un viaje
    Given El usuario tiene al menos un viaje programado en su lista
    When El usuario intenta cancelar un viaje
    Then La aplicación muestra una opción para cancelar el viaje, pero la instrucción es confusa o poco clara

  Scenario: En el que la aplicación incluye una opción clara pero no fácil de acceder para cancelar un viaje
    Given El usuario tiene al menos un viaje programado en su lista
    When El usuario intenta cancelar un viaje
    Then La aplicación muestra claramente una opción para cancelar el viaje, pero el usuario necesita realizar múltiples pasos para acceder a ella

  Scenario: En el que la aplicación no incluye una opción para cancelar el viaje
    Given El usuario tiene al menos un viaje programado en su lista
    When El usuario intenta cancelar un viaje
    Then La aplicación no muestra ninguna opción para cancelar el viaje

  Scenario: En el que la aplicación incluye una opción clara y fácil para cancelar el viaje
    Given El usuario tiene al menos un viaje programado en su lista
    When El usuario intenta cancelar un viaje
    Then La aplicación muestra una opción clara y fácilmente accesible para cancelar el viaje

  Scenario: En el que la aplicación muestra una confirmación de cancelación
    Given El usuario ha seleccionado cancelar un viaje
    When El usuario confirma la cancelación
    Then La aplicación muestra una confirmación de cancelación antes de eliminar el viaje

  Scenario: En el que la aplicación no muestra una confirmación de cancelación
    Given El usuario ha seleccionado cancelar un viaje
    When El usuario confirma la cancelación
    Then La aplicación no muestra ninguna confirmación y procede a eliminar el viaje

  Scenario: En el que la aplicación elimina el viaje cancelado del sistema
    Given El usuario ha confirmado la cancelación de un viaje
    When La cancelación se completa
    Then La aplicación elimina el viaje cancelado de la lista de viajes programados del usuario

  Scenario: En el que la aplicación no elimina el viaje cancelado del sistema
    Given El usuario ha confirmado la cancelación de un viaje
    When La cancelación se completa
    Then La aplicación no elimina el viaje cancelado de la lista de viajes programados del usuario

  Scenario: En el que la aplicación le permite al usuario cancelar el proceso de cancelación de viaje
    Given El usuario ha iniciado el proceso de cancelación de un viaje
    When El usuario decide cancelar la cancelación
    Then La aplicación permite al usuario cancelar el proceso y no elimina el viaje de la lista de viajes programados

  Scenario: En el que la aplicación no le permite al usuario cancelar el proceso de cancelación de viaje
    Given El usuario ha iniciado el proceso de cancelación de un viaje
    When El usuario decide cancelar la cancelación
    Then La aplicación no proporciona una opción para cancelar el proceso y procede a eliminar el viaje de la lista de viajes programados