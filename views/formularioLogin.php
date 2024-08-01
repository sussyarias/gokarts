<!DOCTYPE html>
<html lang="en">
<?php


$registrado = " ";

?>


<head>
    <meta charset="utf-8">
    <title>GoKarts</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="./assets/css/styleLogin.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</head>

<body>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="estilos.css">
    </head>

    <body>
        <div class="container-form login">
            <div class="information">
                <div class="info-childs">
                    <h2>¡¡Bienvenido nuevamente!!</h2>
                    <p>Inicia sesión para acceder a tu perfil, reservar tu próxima carrera y mucho más.</p>
                    <a href="formularioRegister.php"><input type="button" value="Registrarse" id="sign-up"></a>
                </div>
            </div>
            <div class="form-information">
                <div class="form-information-childs">
                    <h2>Iniciar Sesión</h2>
                    
                    <form class="form form-login" novalidate method="post" action="procesarLogin.php">
                        <div>
                            <label>
                                <i class='bx bx-envelope'></i>
                                <input type="email" placeholder="Correo Electrónico" name="userEmail" required>
                            </label>
                        </div>
                        <div>
                            <label>
                                <i class='bx bx-lock-alt'></i>
                                <input type="password" placeholder="Contraseña" name="userPassword" required>
                            </label>
                        </div>
                        <input type="submit" value="Iniciar Sesión">
                        <div class="alerta-error">Todos los campos son obligatorios</div>
                        <div class="alerta-exito">Inicio de sesión exitoso</div>
                    </form>
                </div>
            </div>
        </div>
    </body>

    </html>


    <script src="./assets/js/scripts.js"></script>
    <script>
        $(document).ready(function() {
            // Asegúrate de cerrar el bloque PHP correctamente y de que el valor esté correctamente formateado
            console.log("documento Listo")
            var registrado = '<?php echo $registrado ?>';
            console.log(registrado); // Esto imprimirá el valor de $registrado en la consola
            if (registrado == "si") {
                console.log("registrado es true")
                containerFormRegister.classList.add("hide");
                containerFormLogin.classList.remove("hide")
            } else {
                console.log("registrado no es")
                containerFormLogin.classList.add("hide");
                containerFormRegister.classList.remove("hide")
            }
        });
    </script>




</body>

</html>