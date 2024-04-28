Feature: Como usuario de Aventones ITESO, quiero poder acceder a mi historial de viajes para revisar detalles de viajes pasados y programados
La aplicación debe tener un historial de viajes que permita ver el detalle de cada uno

    Scenario: En el que el usuario tiene viajes pasados que puede visualizar en el historial
        Given el usuario ha realizado viajes pasados
        When accede al historial de viajes en la aplicación
        Then puede visualizar los viajes pasados en el historial

    Scenario: En el que el usuario no tiene viajes pasados
        Given el usuario no ha realizado viajes pasados
        When accede al historial de viajes en la aplicación
        Then no se muestra ningún viaje en el historial

    Scenario: En el que el usuario tiene un historial de viajes
        Given el usuario ha realizado varios viajes
        When accede al historial de viajes en la aplicación
        Then puede ver su historial completo de viajes

    Scenario: En el que el usuario selecciona el viaje para conocer detalles
        Given el usuario tiene un historial de viajes
        When selecciona un viaje específico en el historial
        Then puede ver los detalles completos de ese viaje

    Scenario: En el que el usuario solo observa el resumen del viaje
        Given el usuario tiene un historial de viajes
        When observa el historial de viajes
        Then puede ver un resumen de cada viaje, incluyendo la fecha, origen, destino y estado del viaje

    Scenario: En el que la interfaz es intuitiva para el usuario
        Given el usuario accede al historial de viajes en la aplicación
        When interactúa con la interfaz del historial
        Then encuentra fácilmente la información que busca y puede navegar sin dificultad

    Scenario: En el que la interfaz es difícil de usar para el usuario
        Given el usuario accede al historial de viajes en la aplicación
        When intenta encontrar información en la interfaz del historial
        Then encuentra dificultades para navegar y localizar la información deseada

    Scenario: En el que ningún viaje debe ser actualizado
        Given el usuario accede al historial de viajes en la aplicación
        When revisa los viajes en el historial
        Then ninguno de los viajes muestra actualizaciones o cambios

    Scenario: En el que algún viaje debe ser actualizado en el historial
        Given el usuario accede al historial de viajes en la aplicación
        When revisa los viajes en el historial
        Then encuentra al menos un viaje que ha sido actualizado con información nueva o modificada
