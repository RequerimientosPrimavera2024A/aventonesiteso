const assert = require('assert');
const { Given, When, Then, Before } = require('@cucumber/cucumber');

Before({tags: "@noAccess"}, function () {
    this.currentUser = { canRate: false };
});

Before({tags: "@canAccess"}, function () {
    this.currentUser = { canRate: true, canRateAspect: true };
});

Before({tags: "@cannotRateAspect"}, function () {
    this.currentUser = { canRate: true, canRateAspect: false };
});

Before({tags: "@canRateAllAspects"}, function () {
    // Configuración para el usuario que puede calificar todos los aspectos
    this.currentUser = { canRate: true, canRateAspect: true };
});



Given('estoy en la pantalla principal', function () {
    this.currentPage = 'pantalla principal';
});

When('quiero entrar al apartado para calificar', function () {
    if (this.currentUser && this.currentUser.canRate) {
        this.currentPage = 'pantalla para calificar';
    } else {
        this.currentPage = 'pantalla principal';
    }
});


Given('estoy en la pantalla para calificar', function () {
    this.currentPage = 'pantalla para calificar';
});

When('quiero calificar un aspecto en específico', function () {
    if (this.currentPage === 'pantalla para calificar' && this.currentUser.canRateAspect) {
        this.canRate = true;
    } else {
        this.canRate = false;
    }
});



Then('no me deja entrar al apartado para calificar', function () {
    assert.strictEqual(this.currentPage, 'pantalla principal');
});

Then('entro al apartado para calificar', function () {
    assert.strictEqual(this.currentPage, 'pantalla para calificar');
});

Then('no me deja calificar ese aspecto del pasajero', function () {
    assert.strictEqual(this.canRate, false);
});

Then('puedo calificar todos los aspectos del pasajero', function () {
    assert.strictEqual(this.canRate, true);
});
