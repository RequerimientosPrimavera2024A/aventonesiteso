const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

/*1) Scenario: En el que en usuario puede acceder a la opción Reportar dentro del perfil deseado*/ 
/*2) Scenario: En el que en usuario no puede acceder a la opción “Reportar” dentro del perfil deseado*/ 

function estarEnPerfil() {
    return true; // Asumimos que siempre estamos en el perfil correcto.
  }
  function accederOpcionReportar() {
    return !simulacionDeError; 
  }
  let simulacionDeError = false; 
  
  Given('estoy en el perfil que quiero reportar', function () {
    assert.strictEqual(estarEnPerfil(), true, 'No estoy en el perfil correcto');
  });
  When('quiero acceder a la opción Reportar', function () {
    this.acceso = accederOpcionReportar();
  });
  Then('puedo acceder correctamente', function () {
    simulacionDeError = false; 
    assert.strictEqual(this.acceso, true, 'No pude acceder a la opción de reportar correctamente');
  });
  Then('no puedo acceder correctamente', function () {
    simulacionDeError = true; 
    this.acceso = accederOpcionReportar();
    assert.strictEqual(this.acceso, false, 'Pude acceder a la opción de reportar cuando debería estar bloqueada por un error');
  });

/*3) Scenario: En el que el usuario llena correctamente el formulario*/
/*4) Scenario: En el que el usuario no llena el formulario correctamente*/

let simulacionDeErrorFormulario = false;

function estarEnFormulario() {
  return true; 
}

function intentarLlenarFormulario() {
  return !simulacionDeErrorFormulario; 
}

Given('estoy en el formulario', function () {
  assert.strictEqual(estarEnFormulario(), true, 'No estoy en el formulario');
});

When('quiero llenar el formulario', function () {
  this.resultadoFormulario = intentarLlenarFormulario();
});

Then('lo puedo llenar correctamente', function () {
  simulacionDeErrorFormulario = false; 
  assert.strictEqual(this.resultadoFormulario, true, 'No pude llenar el formulario correctamente');
});

Then('no lo puedo llenar', function () {
  simulacionDeErrorFormulario = true; 
  this.resultadoFormulario = intentarLlenarFormulario(); 
  assert.strictEqual(this.resultadoFormulario, false, 'Pude llenar el formulario cuando debería estar bloqueado por un error');
});


/*5) Scenario: En el que es sistema no registra los reportes*/
/*6) Scenario: En el que el sistema no notifica a los administradores sobre los reportes*/

let reporteEnviado = false;
let notificacionEnviada = false;

function enviarReporte() {
    reporteEnviado = true;
    return reporteEnviado;
}

function registrarReporte() {
    return false; 
}

function notificarAdministradores() {
    return false; 
}

Given('un usuario ha enviado un reporte', function () {
    assert.strictEqual(enviarReporte(), true, 'El reporte no fue enviado correctamente');
});

When('el sistema intenta registrar el reporte', function () {
    this.registroExitoso = registrarReporte();
});

Then('el sistema no registra el reporte', function () {
    assert.strictEqual(this.registroExitoso, false, 'El sistema registró el reporte cuando no debería');
});

Given('un reporte ha sido enviado', function () {
    assert.strictEqual(enviarReporte(), true, 'El reporte no fue enviado correctamente');
});

When('el sistema debería notificar a los administradores', function () {
    this.notificacionExitosa = notificarAdministradores();
});

Then('los administradores no reciben la notificación', function () {
    assert.strictEqual(this.notificacionExitosa, false, 'Los administradores recibieron la notificación cuando no deberían');
});


/*7) Scenario: En el que los usuarios reciben una confirmación de que su reporte ha sido enviado y está siendo procesado*/
/*8) Scenario: En el que los usuarios no reciben una confirmación de que su reporte ha sido enviado y está siendo procesado*/

let confirmacionRecibida = false;

function enviarReporte() {
    return true;
}

function procesarReporte() {
    return confirmacionRecibida;
}

Given('he enviado un reporte', function () {
    assert.strictEqual(enviarReporte(), true, 'No he podido enviar el reporte');
});

When('el sistema procesa el reporte', function () {
    this.confirmacion = procesarReporte();
});

Then('recibo una confirmación de que mi reporte está siendo procesado', function () {
    confirmacionRecibida = true;
    this.confirmacion = procesarReporte();
    assert.strictEqual(this.confirmacion, true, 'No recibí la confirmación de que mi reporte está siendo procesado');
});

Then('no recibo ninguna confirmación', function () {
    confirmacionRecibida = false; 
    this.confirmacion = procesarReporte(); 
    assert.strictEqual(this.confirmacion, false, 'Recibí una confirmación cuando no debería haberla recibido');
});


/*9) Scenario: En el que los administradores no pueden revisar los reportes*/
/*10) Scenario: En el que los administradores no pueden registrar los resultados de cada caso*/
/*11) Scenario: En el que los administradores pueden revisar los reportes y registrar los resultados de cada caso*/

let reportesDisponibles;
let resultadoRegistrado;

function revisarReportes() {
    return reportesDisponibles;
}

function registrarResultado() {
    return resultadoRegistrado;
}

Given('existen reportes pendientes de revisión', function () {
    reportesDisponibles = true;
    assert.ok(reportesDisponibles, 'No existen reportes pendientes de revisión');
});

Given('un administrador ha revisado un reporte', function () {
    reportesDisponibles = true; 
    assert.ok(revisarReportes(), 'El administrador no ha podido revisar el reporte');
});

When('un administrador intenta revisar los reportes', function () {
    this.acceso = revisarReportes();
});

When('intenta registrar el resultado del reporte', function () {
    resultadoRegistrado = false; 
    this.resultado = registrarResultado();
});

Then('el administrador no puede acceder a los reportes', function () {
    reportesDisponibles = false; 
    this.acceso = revisarReportes();
    assert.strictEqual(this.acceso, false, 'El administrador pudo acceder a los reportes cuando no debería');
});

Then('no puede registrar el resultado', function () {
    assert.strictEqual(this.resultado, false, 'El administrador pudo registrar el resultado cuando no debería');
});

When('un administrador revisa y quiere registrar los resultados', function () {
    reportesDisponibles = true; 
    resultadoRegistrado = true; 
    this.acceso = revisarReportes();
    this.resultado = registrarResultado();
});

Then('el administrador puede revisar los reportes y registrar los resultados', function () {
    assert.strictEqual(this.acceso && this.resultado, true, 'El administrador no puede revisar los reportes o registrar los resultados');
});

