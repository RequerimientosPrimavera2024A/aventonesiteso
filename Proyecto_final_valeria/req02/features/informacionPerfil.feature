Feature: Como usuario de AventonesITESO, quiero poder añadir información sobre mi carrera, gustos y hobbies a mi perfil para conectar con otros usuarios con intereses similares.
  Requerimiento que permite incluir detalles sobre la carrera, gustos y hobbies en el perfil de usuario de la aplicación AventonesITESO.
  
  Scenario: En el que los usuarios no pueden acceder a la sección para editar su perfil
    Given estoy viendo mi perfil
    When intento acceder a la sección de edición de perfil
    Then no tengo acceso a la sección de edición de perfil

  Scenario: En el que el usuario accede a la sección para editar su perfil
    Given estoy viendo mi perfil
    When accedo a la sección de edición de perfil
    Then puedo ver y modificar campos de carrera, gustos y hobbies

  Scenario: En el que el usuario no puede guardar su información de carrera, gustos o hobbies
    Given estoy en la sección de edición de perfil
    When intento guardar mi información actualizada de carrera, gustos o hobbies
    Then se muestra un error y no se guarda la información

  Scenario: En el que el usuario puede actualizar su perfil
    Given estoy en la sección de edición de perfil
    When actualizo y guardo mi información de carrera, gustos y hobbies
    Then mi perfil se actualiza correctamente con la nueva información 

  Scenario: En el que los usuarios no pueden ver los cambios realizados en los perfiles de los demás
    Given un usuario ha actualizado su perfil
    When otro usuario visita el perfil actualizado
    Then no puede ver los cambios recientes en la información de carrera, gustos o hobbies

  Scenario: En el que los usuarios pueden ver los cambios realizados en los perfiles de los demás
    Given un usuario ha actualizado su perfil
    When otro usuario visita el perfil actualizado
    Then puede ver los cambios recientes en la información de carrera, gustos y hobbies 
