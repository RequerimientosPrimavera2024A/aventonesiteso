Feature: Como usuario conductor, quiero poder calificar a mis pasajeros en aspectos como limpieza, puntualidad y conducta durante el viaje para proporcionar retroalimentación y contribuir a la reputación del pasajero en la plataforma.
  Requerimiento para que el usuario conductor pueda calificar la limpieza, puntualidad, conducta del pasajero.

@noAccess
Scenario: En el que el usuario no puede entrar a calificar al pasajero.
  Given estoy en la pantalla principal
  When quiero entrar al apartado para calificar
  Then no me deja entrar al apartado para calificar

@canAccess
Scenario: En el que el usuario puede entrar a calificar al pasajero.
  Given estoy en la pantalla principal
  When quiero entrar al apartado para calificar
  Then entro al apartado para calificar

@cannotRateAspect
Scenario: En el que el conductor no puede calificar algún aspecto del pasajero.
    Given estoy en la pantalla para calificar
    When quiero calificar un aspecto en específico
    Then no me deja calificar ese aspecto del pasajero


@canRateAllAspects
Scenario: En el que el conductor puede calificar todos los aspectos del pasajero.
    Given estoy en la pantalla para calificar
    When quiero calificar un aspecto en específico
    Then puedo calificar todos los aspectos del pasajero

