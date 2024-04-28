Feature: Como usuario de Rides ITESO, quiero poder acordar y realizar el pago al conductor por el consumo de combustible durante un viaje compartido para facilitar el proceso de pago dentro de la aplicación
La aplicación debe mostrar una estimación del costo del viaje y la cantidad correspondiente que cada pasajero debe pagar al conductor. Los pasajeros deben poder realizar el pago con un solo click, utilizando una tarjeta previamente registrada

    Scenario: En el que la interfaz de usuario es clara y contribuye a un proceso de pago rápido
        Given el pasajero y el conductor finalizan un viaje compartido
        When el pasajero accede a la función de pago dentro de la aplicación Rides ITESO
        Then encuentra una interfaz clara que facilita el proceso de pago al conductor

    Scenario: En el que la interfaz de usuario es complicada y dificulta el proceso de pago
        Given el pasajero y el conductor finalizan un viaje compartido
        When el pasajero accede a la función de pago dentro de la aplicación Rides ITESO
        Then enfrenta dificultades debido a una interfaz complicada que dificulta el proceso de pago al conductor

    Scenario: En el que el pasajero ha registrado una tarjeta previamente
        Given el pasajero ha registrado una tarjeta de pago previamente en la aplicación Rides ITESO
        When realiza un pago al conductor por el consumo de combustible
        Then el pago se procesa utilizando la tarjeta registrada

    Scenario: En el que el pasajero no ha registrado una tarjeta previamente
        Given el pasajero no ha registrado una tarjeta de pago previamente en la aplicación Rides ITESO
        When intenta realizar un pago al conductor por el consumo de combustible
        Then la aplicación solicita al pasajero que registre una tarjeta de pago antes de continuar con el proceso de pago

    Scenario: En el que el conductor ha registrado una tarjeta previamente
        Given el conductor ha registrado una tarjeta de pago previamente en la aplicación Rides ITESO
        When recibe un pago del pasajero por el consumo de combustible
        Then el pago se procesa utilizando la tarjeta registrada del conductor

    Scenario: En el que el conductor no ha registrado una tarjeta previamente
        Given el conductor no ha registrado una tarjeta de pago previamente en la aplicación Rides ITESO
        When recibe un pago del pasajero por el consumo de combustible
        Then la aplicación notifica al conductor sobre la necesidad de registrar una tarjeta de pago para recibir el pago

    Scenario: En el que no se realiza un pago
        Given finaliza un viaje compartido sin acuerdo de pago por consumo de combustible
        When los pasajeros y el conductor acuerdan no realizar un pago
        Then no se realiza ningún proceso de pago adicional dentro de la aplicación Rides ITESO

    Scenario: En el que se realiza un pago con efectivo
        Given el pasajero y el conductor acuerdan realizar un pago con efectivo por el consumo de combustible
        When el pasajero realiza el pago en efectivo al conductor al finalizar el viaje
        Then se realiza el pago y se completa el proceso sin utilizar la aplicación Rides ITESO

    Scenario: En el que se realiza un pago con tarjeta dentro de la aplicación
        Given el pasajero y el conductor acuerdan realizar un pago con tarjeta por el consumo de combustible
        When el pasajero realiza el pago utilizando la tarjeta registrada en la aplicación Rides ITESO
        Then se procesa el pago de manera segura y se registra la transacción correctamente

    Scenario: En el que se paga la cantidad estimada por la aplicación
        Given la aplicación Rides ITESO muestra una estimación de costo por el consumo de combustible al finalizar el viaje
        When el pasajero realiza el pago al conductor
        Then el pasajero paga la cantidad estimada según la aplicación

    Scenario: En el que se paga una cantidad personalizada
        Given el pasajero y el conductor acuerdan una cantidad personalizada por el consumo de combustible
        When el pasajero realiza el pago al conductor
        Then el pasajero paga la cantidad acordada durante el viaje

    Scenario: En el que el pago con tarjeta es exitoso
        Given el pasajero utiliza una tarjeta registrada para realizar un pago al conductor
        When se procesa el pago dentro de la aplicación Rides ITESO
        Then la transacción se completa con éxito y se registra el pago al conductor

    Scenario: En el que el pago con tarjeta no es exitoso
        Given el pasajero utiliza una tarjeta registrada para realizar un pago al conductor
        When se intenta procesar el pago dentro de la aplicación Rides ITESO pero falla
        Then se notifica al usuario sobre el problema y se solicita intentar nuevamente
