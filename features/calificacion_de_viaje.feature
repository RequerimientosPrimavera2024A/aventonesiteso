Feature: Como usuario de Rides ITESO, quiero poder calificar y dejar comentarios sobre mis viajes compartidos para mejorar la calidad del servicio
Esto busca mejorar las experiencias con el sistema de rides, recomendar a usuarios dentro de la aplicación y obtener retroalimentación para mejorar la aplicación.

    Scenario: En el que la interfaz de usuario es intuitiva y fácil de usar
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When accede a la opción de calificar y dejar comentarios sobre el viaje
        Then encuentra una interfaz intuitiva que facilita la selección de calificación y escritura de comentarios

    Scenario: En el que la interfaz de usuario es poco intuitiva y complicada
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When accede a la opción de calificar y dejar comentarios sobre el viaje
        Then encuentra dificultades para navegar y utilizar la interfaz de calificación y comentarios

    Scenario: En el que el usuario selecciona una calificación
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When selecciona una calificación (por ejemplo, de 1 a 5 estrellas) para el viaje
        Then la calificación se registra correctamente asociada al viaje del usuario

    Scenario: En el que el usuario no selecciona una calificación
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When decide no seleccionar una calificación para el viaje
        Then no se registra ninguna calificación

    Scenario: En el que el usuario escribe un comentario
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When escribe un comentario sobre la experiencia del viaje
        Then el comentario se guarda correctamente asociado al viaje del usuario

    Scenario: En el que el usuario no escribe un comentario
        Given el usuario finaliza un viaje compartido en la aplicación Rides ITESO
        When decide no escribir ningún comentario sobre el viaje
        Then no se registra ningún comentario

    Scenario: En el que el viaje en el historial tiene calificación y comentario
        Given el usuario ha finalizado un viaje compartido y ha dejado calificación y comentario
        When accede al historial de viajes en la aplicación Rides ITESO
        Then puede ver la calificación y el comentario asociados al viaje en el historial

    Scenario: En el que el viaje en el historial no tiene calificación y comentario
        Given el usuario ha finalizado un viaje compartido pero no ha dejado calificación ni comentario
        When accede al historial de viajes en la aplicación Rides ITESO
        Then no se muestra ninguna calificación ni comentario asociado al viaje en el historial

    Scenario: En el que un usuario dejó calificación y comentario para un viaje
        Given un usuario ha finalizado un viaje compartido y ha dejado una calificación y comentario
        When otro usuario accede al resumen de ese viaje
        Then puede ver la calificación y el comentario dejados por el primer usuario asociados al viaje

    Scenario: En el que un usuario no dejó calificación y comentario para un viaje
        Given un usuario ha finalizado un viaje compartido pero no ha dejado calificación ni comentario
        When otro usuario accede al resumen de ese viaje
        Then no se muestra ninguna calificación ni comentario asociado al viaje en el historial

    Scenario: En el que un usuario externo al viaje visualiza las calificaciones de los usuarios
        Given conductores y pasajeros califican sus experiencias en los viajes
        When un usuario accede a un perfil en la aplicación
        Then el usuario puede ver las calificaciones y comentarios de los viajes hechos por ese perfil
