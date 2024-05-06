Feature: Como un usuario de la aplicación "Aventones ITESO" que ha acumulado puntos y desea canjearlos, quiero poder consultar un catálogo de productos o descuentos disponibles en los negocios del ITESO, para conocer las opciones de canje y seleccionar la que más me convenga.
    Requerimiento Cambio de puntos en negocios dentro del ITESO

Example: En el que el usuario puede acceder a la sección de catálogo de productos
    Given estoy en el incio de la aplicación AventonesITESO
    When doy clic en "Catalogo de productos" 
    Then visualiza el catalogo de productos

Example: En el que el usuario puede acceder a la sección de los descuentos desde la aplicación
    Given estoy en el incio de la aplicación AventonesITESO
    When doy clic en "Catalogo de descuentos" 
    Then visualiza el catalogo de descuentos

Example: En el que la aplicación muestra el catálogo de los negocios del ITESO participantes en el programa de canje de puntos
    Given estoy en la pantalla del catalogo de descuentos
    When doy clic en "Catalogo de descuentos"
    Then visualiza el catálogo de los negocios del ITESO participantes en el programa de canje de puntos

Example: En el que la aplicación no muestra el catálogo de los negocios del ITESO participantes en el programa de canje de puntos
    Given estoy en la pantalla del catalogo de descuentos
    When doy clic en "Catalogo de descuentos"
    Then no visualiza el catálogo de los negocios del ITESO participantes en el programa de canje de puntos

Example: En el que la aplicación muestra para cada negocio, el catálogo de los productos
    Given estoy en la página de detalles del negocio
    When veo el catálogo de productos asociado al negocio
    Then visualiza todos los productos relacionados con ese negocio

Example: En el que la aplicación muestra para cada negocio, el catálogo de los descuentos disponibles
    Given estoy en la página de detalles del negocio
    When veo el catálogo de descuentos disponibles asociado al negocio
    Then visualiza todos los descuentos disponibles relacionados con ese negocio

Example: En el que la aplicación muestra de cada producto incluyendo información sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio.
    Given estoy en la página de detalles del negocio
    When veo información de cada producto sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio
    Then visualiza los productos con la información sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio.

Example: En el que la aplicación muestra de cada descuento de producto incluyendo información sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio.
    Given estoy en la página de detalles del negocio
    When veo información de cada descuento de producto sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio
    Then visualiza los descuentos de productos con la información sobre su nombre, descripción, cantidad de puntos necesarios para canjearlo y ubicación del negocio.