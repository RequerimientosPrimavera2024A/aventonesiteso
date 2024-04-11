Feature: Como usuario de Aventones ITESO, quiero que la aplicación trace la ruta óptima durante un viaje durante un viaje compartido para llegar a mi destino de manera eficiente

    Requerimiento para visualizar y establecer una ruta optima.

Example: En el que la aplicación sí traza la ruta optima con las consideraciones 
    Given Estoy en la pantalla del mapa
    When Intento ver mi ruta de viaje
    Then veo la ruta mas optima en el mapa

Example: En el que la aplicación no usa las consideraciones para trazar una ruta
    Given Estoy en la pantalla del mapa
    When Intento ver mi ruta de viaje
    Then veo que la ruta no es actualizada apesar de las condiciones

Example: En el que la aplicación no traza la ruta
    Given Estoy en la pantalla del mapa
    When Intento ver mi ruta de viaje
    Then No puedo ver la ruta

Example: En el que los usuarios sí pueden visualizar la ruta en tiempo real
    Given Estoy en la ventana del mapa
    When Intento ver mi ruta 
    Then Veo mi ruta en tiempo real 

Example: En el que los usuarios no pueden visualizar la ruta en tiempo real
    Given Estoy en la ventana del mapa
    When Intento ver mi ruta 
    Then No veo mi ruta en tiempo real 

Example: En el que la ruta sí ajusta la ruta cuando hay cambios inesperados
    Given Estoy en la ventana del mapa y acaba de ocurrir un accidente en la ruta 
    When Intento ver mi nueva ruta 
    Then Veo mi ruta actualizarse en tiempo real

Example: En el que la aplicación no detecta condiciones inesperadas
    Given Estoy en la ventana del mapa y acaba de ocurrir un accidente en la ruta 
    When Intento ver mi nueva ruta 
    Then La misma ruta sigue mostrandose 

Example: En el que la aplicación nunca modifca la ruta sin importar las condiciones
    Given Estoy en la ventana del mapa y ya se conoce de antemano que hay trafico  
    When Intento ver mi nueva ruta 
    Then La misma ruta sigue mostrandose sin considerar el trafico