Feature: Como usuario de AventonesITESO, quiero poder acceder a mi historial de viajes para revisar detalles de viajes pasados y programados
    Requerimiento para acceder al historial de viajes

Example: En el que el usuario puede ver el historial de viajes de cada usuario en su perfil
    Given estoy en el perfil de un usuario
    When intento ver la opción Historial de Viajes
    Then se ve una lista con los viajes realizados por ese usuario

Example: En el que el usuario no puede ver el historial de viajes de cada usuario en su perfil
    Given estoy en el perfil de un usuario
    When intento ver la opción Historial de Viajes
    Then no se muestra la opción Historial de Viajes 

Example: En el que usuario puede ver la fecha, horas, rutas, compañeros de viaje, calificaciones y comentarios en el historial de viajes de otro usuario
    Given estoy en la opción Historial de Viajes
    When hago clic en Ver detalles del viaje
    Then se me muestran los datos de la fecha, horas, rutas, compañeros de viaje, calificaciones y comentarios de todos los viajes realizados por ese usuario

Example: En el que la aplicación es intuitiva al mostrar el historial de viajes de un usuario
    Given estoy en la opción Historial de Viajes de manera intuitiva
    When se me muestran todos los datos relevantes del viaje
    Then se muestra el historial de viajes de manera intuitiva

Example: En el que el usuario puede navegar fácilmente en el historial de viajes de otro usuario
    Given estoy en la opción Historial de Viajes de otro usuario
    When hago clic en Ir a mi perfil
    Then me lleva a mi perfil

Example: En el que el usuario hace un cambio de un viaje programado y la aplicación se actualiza en tiempo en real
    Given estoy en la opción Historial de Viajes de mi usuario
    When hago click en editar y hago un cambio de un viaje programado
    Then se actualiza correctamente el viaje programado

Example: En el que el usuario hace una adición de un viaje programado y la aplicación se actualiza en tiempo en real
    Given estoy en la opción Historial de Viajes de mi usuario
    When hago click en editar y hago una adición de un viaje programado
    Then se agrega la adición correctamente el viaje programado