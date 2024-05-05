Feature: Como usuario de AventonesITESO, quiero poder reportar perfiles inapropiados para contribuir a mantener un ambiente seguro y respetuoso en la plataforma.
  Requerimiento que permite a los usuarios de la aplicación AventonesITESO reportar perfiles que consideren inapropiados, fraudulentos, o que infrinjan las normas de la comunidad.

  Scenario: En el que en usuario puede acceder a la opción Reportar dentro del perfil deseado
    Given estoy en el perfil que quiero reportar
    When quiero acceder a la opción Reportar
    Then puedo acceder correctamente

  Scenario: En el que en usuario no puede acceder a la opción “Reportar” dentro del perfil deseado
    Given estoy en el perfil que quiero reportar
    When quiero acceder a la opción Reportar
    Then no puedo acceder correctamente

  Scenario: En el que el usuario llena correctamente el formulario
    Given estoy en el formulario
    When quiero llenar el formulario
    Then lo puedo llenar correctamente

  Scenario: En el que el usuario no llena el formulario correctamente
    Given estoy en el formulario
    When quiero llenar el formulario
    Then no lo puedo llenar

  Scenario: En el que es sistema no registra los reportes
    Given un usuario ha enviado un reporte
    When el sistema intenta registrar el reporte
    Then el sistema no registra el reporte

  Scenario: En el que el sistema no notifica a los administradores sobre los reportes
    Given un reporte ha sido enviado
    When el sistema debería notificar a los administradores
    Then los administradores no reciben la notificación 

  Scenario: En el que los usuarios reciben una confirmación de que su reporte ha sido enviado y está siendo procesado
    Given he enviado un reporte
    When el sistema procesa el reporte
    Then recibo una confirmación de que mi reporte está siendo procesado

  Scenario: En el que los usuarios no reciben una confirmación de que su reporte ha sido enviado y está siendo procesado
    Given he enviado un reporte
    When el sistema procesa el reporte
    Then no recibo ninguna confirmación 

  Scenario: En el que los administradores no pueden revisar los reportes
    Given existen reportes pendientes de revisión
    When un administrador intenta revisar los reportes
    Then el administrador no puede acceder a los reportes

  Scenario: En el que los administradores no pueden registrar los resultados de cada caso
    Given un administrador ha revisado un reporte
    When intenta registrar el resultado del reporte
    Then no puede registrar el resultado

  Scenario: En el que los administradores pueden revisar los reportes y registrar los resultados de cada caso
    Given existen reportes pendientes de revisión
    When un administrador revisa y quiere registrar los resultados
    Then el administrador puede revisar los reportes y registrar los resultados
