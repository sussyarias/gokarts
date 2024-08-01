document.addEventListener('DOMContentLoaded', function() {
    const telefonoInput = document.getElementById('telefono');
    const telefonoError = document.getElementById('telefonoError');
    const descripcionTextarea = document.getElementById('descripcion');
    const descripcionError = document.getElementById('descripcionError');
    const form = document.getElementById('reservaForm');

    telefonoInput.addEventListener('input', function() {
        // Verifica si la entrada contiene caracteres no numéricos
        const value = telefonoInput.value;
        const isNumeric = /^[0-9]*$/.test(value);

        if (!isNumeric) {
            telefonoError.style.display = 'block'; // Muestra el mensaje de error
        } else {
            telefonoError.style.display = 'none'; // Oculta el mensaje de error
        }

        // Filtra la entrada para solo aceptar números
        telefonoInput.value = value.replace(/[^0-9]/g, '');
    });

    form.addEventListener('submit', function(event) {
        // Verifica si el campo de descripción está vacío
        if (descripcionTextarea.value.trim() === '') {
            descripcionError.style.display = 'block'; // Muestra el mensaje de error
            event.preventDefault(); // Previene el envío del formulario
        } else {
            descripcionError.style.display = 'none'; // Oculta el mensaje de error
        }
    });
});


