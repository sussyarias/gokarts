document.addEventListener('DOMContentLoaded', function () {
    const telefonoInput = document.getElementById('telefono');
    const telefonoError = document.getElementById('telefonoError');
    const descripcionTextarea = document.getElementById('descripcion');
    const descripcionError = document.getElementById('descripcionError');
    const form = document.getElementById('reservaForm');
    const reservaModal = new bootstrap.Modal(document.getElementById('reservaModal'));
    const confirmacionModal = new bootstrap.Modal(document.getElementById('confirmacionModal'));
 
    telefonoInput.addEventListener('input', function () {
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
 
    form.addEventListener('submit', function (event) {
        // Verifica si el campo de descripción está vacío
        if (descripcionTextarea.value.trim() === '') {
            descripcionError.style.display = 'block'; // Muestra el mensaje de error
            event.preventDefault(); // Previene el envío del formulario
        } else {
            descripcionError.style.display = 'none'; // Oculta el mensaje de error
 
            // Oculta el modal de reserva y muestra el modal de confirmación
            event.preventDefault(); // Evita el envío del formulario real
            reservaModal.hide();
            confirmacionModal.show();
        }
    });
 
    // Resetea el formulario al cerrar el modal
    const reservaModalElement = document.getElementById('reservaModal');
    reservaModalElement.addEventListener('hidden.bs.modal', function () {
        form.reset(); // Resetea el formulario
        telefonoError.style.display = 'none'; // Oculta el mensaje de error
        descripcionError.style.display = 'none'; // Oculta el mensaje de error
    });
});
 
// Función para refrescar la página
function refreshPage() {
    window.location.reload(); // Refresca la página
}