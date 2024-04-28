Feature: Como usuario de Rides ITESO, quiero poder buscar y filtrar viajes disponibles según mis necesidades para encontrar opciones que se adapten a mis requisitos
Esta funcionalidad permitirá a los usuarios encontrar rápidamente viajes compatibles con sus requisitos específicos

    Scenario: En el que la interfaz de usuario permite filtrar fácilmente los viajes
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When encuentra una interfaz intuitiva para aplicar filtros como origen, destino, fecha y horario
        Then puede filtrar los viajes de manera eficiente según sus preferencias

    Scenario: En el que la interfaz de usuario dificulta el filtrado de viajes
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When encuentra una interfaz complicada para aplicar filtros y navegar por las opciones
        Then enfrenta dificultades para filtrar los viajes de manera efectiva

    Scenario: En el que el usuario selecciona todos los filtros
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When selecciona todos los filtros disponibles, incluyendo origen, destino, fecha y horario
        Then la aplicación muestra los viajes que cumplen con todos los filtros seleccionados

    Scenario: En el que el usuario selecciona algunos de los filtros
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When selecciona algunos filtros, como origen y fecha, pero no todos
        Then la aplicación muestra los viajes que cumplen con los filtros seleccionados

    Scenario: En el que el usuario no selecciona ningún filtro
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When no aplica ningún filtro y simplemente navega por la lista de viajes disponibles
        Then la aplicación muestra todos los viajes sin ningún filtro aplicado

    Scenario: En el que se muestran todos los viajes
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When no se aplican filtros o se seleccionan filtros amplios que incluyen todos los viajes
        Then la aplicación muestra todos los viajes disponibles sin restricciones

    Scenario: En el que se muestran algunos de los viajes
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When se aplican filtros específicos que limitan la lista de viajes mostrados
        Then la aplicación muestra solo los viajes que cumplen con los criterios de filtrado seleccionados

    Scenario: En el que no se muestra ningún viaje
        Given el usuario accede a la función de búsqueda y filtrado de viajes en la aplicación Rides ITESO
        When se aplican filtros demasiado restrictivos que no coinciden con ningún viaje disponible
        Then la aplicación no muestra ningún viaje y notifica al usuario sobre la falta de resultados
