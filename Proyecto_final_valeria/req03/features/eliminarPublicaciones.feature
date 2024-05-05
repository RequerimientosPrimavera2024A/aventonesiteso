Feature: Como usuario de AventonesITESO, quiero que las publicaciones de viajes se eliminen o marquen como completas automáticamente una vez llenas, para asegurar que la información en el muro esté siempre actualizada.
  Este requerimiento permite que las publicaciones de viajes en el muro de la aplicación AventonesITESO sean automáticamente eliminadas o marcadas como completas una vez que se haya alcanzado el número máximo de pasajeros permitidos para ese viaje. 
    
  Scenario: En el que la publicación se marca como completada o se elimina al alcanzar el máximo de pasajeros
    Given la publicación de un viaje está a punto de alcanzar el límite de pasajeros
    When el último pasajero se une al viaje
    Then la publicación se marca como completada y se elimina del muro 

  Scenario: En el que la publicación se sigue mostrando en el muro a pesar de llegar a su máximo de pasajeros
    Given la publicación de un viaje ha alcanzado el límite de pasajeros
    When verifico el muro de publicaciones
    Then la publicación todavía se muestra en el muro

  Scenario: En el que los cambios se reflejan en tiempo real en el muro
    Given una publicación de viaje ha cambiado de estado a completado
    When accedo al muro de publicaciones
    Then veo que la publicación se ha actualizado en tiempo real 

  Scenario: En el que los cambios no se reflejan en tiempo real en el muro
    Given una publicación de viaje ha cambiado de estado a completado
    When accedo al muro de publicaciones
    Then la publicación no muestra el estado actualizado 

  Scenario: En el que se siguen presentando como opción los viajes completados
    Given existen publicaciones de viajes completados
    When busco viajes disponibles en el muro
    Then los viajes completados se muestran como opciones disponibles 

  Scenario: En el que solo se muestran viajes que aún tienen espacios disponibles en el automóvil
    Given existen varios viajes publicados
    When busco viajes disponibles en el muro
    Then solo se muestran las publicaciones de viajes que aún tienen espacios disponibles