Feature: Como usuario de la aplicación, quiero poder acceder y visualizar las normas de conducta para entender las reglas que debo seguir dentro de la plataforma y durante los viajes.

  Scenario: En el que se permite el acceso a las normas de conducta
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then La aplicación permite el acceso a las normas de conducta

  Scenario: En el que no se permite el acceso a las normas de conducta
    Given El usuario está utilizando la aplicación
    When El usuario intenta buscar las normas de conducta
    Then La aplicación no permite el acceso a las normas de conducta

  Scenario: En el que las normas son presentadas de forma clara y fácil de comprender
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then Las normas de conducta son presentadas de forma clara y fácil de comprender

  Scenario: En el que las normas son presentadas de forma clara pero no fáciles de comprender
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then Las normas de conducta son presentadas de forma clara pero no son fáciles de comprender

  Scenario: En el que las normas son presentadas de forma fácil de comprender pero no clara
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then Las normas de conducta son presentadas de forma fácil de comprender pero no son claras

  Scenario: En el que las normas no abordan comportamientos relevantes
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then Las normas de conducta no abordan comportamientos relevantes

  Scenario: En el que las normas abordan comportamientos relevantes
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then Las normas de conducta abordan comportamientos relevantes

  Scenario: En el que la sección de normas de conducta es fácilmente accesible desde cualquier parte de la aplicación
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then La sección de normas de conducta es fácilmente accesible desde cualquier parte de la aplicación

  Scenario: En el que la sección de normas de conducta no es fácilmente accesible desde cualquier parte de la aplicación
    Given El usuario está utilizando la aplicación
    When El usuario busca las normas de conducta
    Then La sección de normas de conducta no es fácilmente accesible desde cualquier parte de la aplicación