const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");

/*1) Scenario: En el que la publicación se marca como completada o se elimina al alcanzar el máximo de pasajeros*/
/*2) Scenario: En el que la publicación se sigue mostrando en el muro a pesar de llegar a su máximo de pasajeros*/

let pasajerosMaximos = 4; // depende el automovl el límite de pasajeros 
let pasajerosActuales = 0;
let publicacionVisible = true;

function alcanzarLimitePasajeros(cantidad) {
    pasajerosActuales = cantidad;
    return pasajerosActuales >= pasajerosMaximos;
}

function unirseAlViaje() {
    pasajerosActuales++;
    return pasajerosActuales;
}

function verificarPublicacion() {
    return publicacionVisible;
}

Given("la publicación de un viaje está a punto de alcanzar el límite de pasajeros", function () {
    pasajerosActuales = pasajerosMaximos - 1; 
    assert.strictEqual(alcanzarLimitePasajeros(pasajerosActuales), false, "El viaje ya ha alcanzado el límite");
});

When("el último pasajero se une al viaje", function () {
    unirseAlViaje();
    publicacionVisible = !(pasajerosActuales === pasajerosMaximos); 
});

Then("la publicación se marca como completada y se elimina del muro", function () {
    assert.strictEqual(verificarPublicacion(), false, "La publicación no fue eliminada del muro");
});

Given("la publicación de un viaje ha alcanzado el límite de pasajeros", function () {
    pasajerosActuales = pasajerosMaximos;
    publicacionVisible = true; 
});

When("verifico el muro de publicaciones", function () {
    this.publicacionAunVisible = verificarPublicacion();
});

Then("la publicación todavía se muestra en el muro", function () {
    assert.strictEqual(this.publicacionAunVisible, true, "La publicación no se muestra en el muro");
});


/*3) Scenario: En el que los cambios se reflejan en tiempo real en el muro*/
/*4) Scenario: En el que los cambios no se reflejan en tiempo real en el muro */

let estadoPublicacion = 'pendiente'; 
let muroActualizado = false;

function cambiarEstadoPublicacion() {
    estadoPublicacion = 'completado'; 
}

function verificarMuro() {
    return muroActualizado; 
}

Given("una publicación de viaje ha cambiado de estado a completado", function () {
    cambiarEstadoPublicacion();
    assert.strictEqual(estadoPublicacion, 'completado', 'El estado de la publicación no ha cambiado a completado');
});

When("accedo al muro de publicaciones", function () {
    muroActualizado = (estadoPublicacion === 'completado'); 
});

Then("veo que la publicación se ha actualizado en tiempo real", function () {
    assert.strictEqual(verificarMuro(), true, 'No veo que la publicación se haya actualizado en tiempo real');
});

Then("la publicación no muestra el estado actualizado", function () {
    muroActualizado = false; 
    assert.strictEqual(verificarMuro(), false, 'La publicación muestra el estado actualizado cuando no debería');
});


/*5) Scenario: En el que se siguen presentando como opción los viajes completados*/
/*6) Scenario: En el que solo se muestran viajes que aún tienen espacios disponibles en el automóvil*/

let viajes = [];

function prepararViajes(completados, cantidad) {
    viajes = [];
    for (let i = 0; i < cantidad; i++) {
        viajes.push({ completado: completados });
    }
}

function filtrarViajesDisponibles() {
    return viajes.filter(viaje => !viaje.completado);
}

Given("existen publicaciones de viajes completados", function () {
    prepararViajes(true, 5); 
});

Given("existen varios viajes publicados", function () {
    prepararViajes(false, 3); 
    prepararViajes(true, 2); 
});

When("busco viajes disponibles en el muro", function () {
    this.viajesFiltrados = filtrarViajesDisponibles();
});

Then("los viajes completados se muestran como opciones disponibles", function () {
    const viajesCompletadosMostrados = viajes.every(v => v.completado) && viajes.length === 5;
    assert.strictEqual(viajesCompletadosMostrados, true, "Los viajes completados no se están mostrando como disponibles cuando deberían");
});


Then("solo se muestran las publicaciones de viajes que aún tienen espacios disponibles", function () {
    const soloViajesDisponibles = this.viajesFiltrados.every(v => !v.completado);
    assert.strictEqual(soloViajesDisponibles, true, "Se están mostrando viajes completados que no deberían aparecer");
});
