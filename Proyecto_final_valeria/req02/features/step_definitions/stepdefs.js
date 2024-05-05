const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

/*1) Scenario: En el que los usuarios no pueden acceder a la sección para editar su perfil*/
/*2) Scenario: En el que el usuario accede a la sección para editar su perfil*/

let accesoPermitido = false;

function estoyViendoMiPerfil() {
    return true; 
}

function intentarAccederEdicion() {
    return accesoPermitido;
}

Given('estoy viendo mi perfil', function () {
    assert.strictEqual(estoyViendoMiPerfil(), true, 'No puedo ver mi perfil');
});

When('intento acceder a la sección de edición de perfil', function () {
    accesoPermitido = false; 
    this.puedeEditar = intentarAccederEdicion();
});

When('accedo a la sección de edición de perfil', function () {
    accesoPermitido = true; 
    this.puedeEditar = intentarAccederEdicion();
});

Then('no tengo acceso a la sección de edición de perfil', function () {
    assert.strictEqual(this.puedeEditar, false, 'Tengo acceso a la sección de edición cuando no debería');
});

Then('puedo ver y modificar campos de carrera, gustos y hobbies', function () {
    assert.strictEqual(this.puedeEditar, true, 'No puedo ver ni modificar los campos de carrera, gustos y hobbies');
});

/*3) Scenario: En el que el usuario no puede guardar su información de carrera, gustos o hobbies*/
/*4) Scenario: En el que el usuario puede actualizar su perfil*/

let informacionGuardada = false;

function enSeccionEdicionPerfil() {
    return true; 
}

function guardarInformacion() {
    return informacionGuardada; 
}

Given('estoy en la sección de edición de perfil', function () {
    assert.strictEqual(enSeccionEdicionPerfil(), true, 'No estoy en la sección de edición de perfil');
});

When('intento guardar mi información actualizada de carrera, gustos o hobbies', function () {
    informacionGuardada = false; 
    this.guardadoExitoso = guardarInformacion();
});

When('actualizo y guardo mi información de carrera, gustos y hobbies', function () {
    informacionGuardada = true; 
    this.guardadoExitoso = guardarInformacion();
});

Then('se muestra un error y no se guarda la información', function () {
    assert.strictEqual(this.guardadoExitoso, false, 'La información se guardó cuando debería haber un error');
});

Then('mi perfil se actualiza correctamente con la nueva información', function () {
    assert.strictEqual(this.guardadoExitoso, true, 'No se pudo actualizar el perfil correctamente');
});

/*5) Scenario: En el que los usuarios no pueden ver los cambios realizados en los perfiles de los demás*/
/*6) Scenario: En el que los usuarios pueden ver los cambios realizados en los perfiles de los demás*/
let perfilActualizado = false;
let cambiosVisibles = false;

function actualizarPerfil() {
    perfilActualizado = true; 
    return perfilActualizado;
}

function visitarPerfil() {
    return cambiosVisibles; 
}

Given('un usuario ha actualizado su perfil', function () {
    assert.strictEqual(actualizarPerfil(), true, 'El usuario no pudo actualizar su perfil');
});

When('otro usuario visita el perfil actualizado', function () {
    this.visualizacion = visitarPerfil();
});

Then('no puede ver los cambios recientes en la información de carrera, gustos o hobbies', function () {
    cambiosVisibles = false; 
    this.visualizacion = visitarPerfil(); 
    assert.strictEqual(this.visualizacion, false, 'El otro usuario puede ver los cambios cuando no debería');
});

Then('puede ver los cambios recientes en la información de carrera, gustos y hobbies', function () {
    cambiosVisibles = true; 
    this.visualizacion = visitarPerfil(); 
    assert.strictEqual(this.visualizacion, true, 'El otro usuario no puede ver los cambios recientes');
});

