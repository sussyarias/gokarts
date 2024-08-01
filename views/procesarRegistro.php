<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "ingreso a la funcion";
    escribirLog("ingresando a la funcion");

    $userName = $_POST['userName'];
    $userLastName = $_POST['userLastName'];
    $userEmail = $_POST['userEmail'];
    $userPassword = $_POST['userPassword'];

    escribirLog($userName);

    // Crear conexión con Oracle
    $conexion = oci_connect("alex", "123", "localhost/xe");
    if (!$conexion) {
        $e = oci_error();
        escribirLog("Conexión fallida: " . $e['message']);
        die("Conexión fallida: " . $e['message']);
    }
    escribirLog("despues de oci_connect");

    // Consulta para insertar el usuario
    $sql = "INSERT INTO fide_usuario_tb (ROL_ID, nombre, apellidos, correo_electronico, telefono, clave)
            VALUES (1, :nombre, :apellidos, :correo_electronico, '', :clave)";

    $INSERT = oci_parse($conexion, $sql);

    // Vincular los parámetros
    oci_bind_by_name($INSERT, ":nombre", $userName);
    oci_bind_by_name($INSERT, ":apellidos", $userLastName);
    oci_bind_by_name($INSERT, ":correo_electronico", $userEmail);
    oci_bind_by_name($INSERT, ":clave", $userPassword);

    escribirLog("antes del insert");
    $r = oci_execute($INSERT);
    if ($r) {
        escribirLog("exito");
    } else {
        $e = oci_error($INSERT);
        escribirLog("Error: " . $e['message']);
        die("Error: " . $e['message']);
    }
    escribirLog("despues del insert");

    oci_free_statement($INSERT);
    oci_close($conexion);

    $registrado = "si";

    header("Location: formularioLogin.php");
    exit();
} else {
    header("Location: index.php");
    exit();
}










function escribirLog($texto)
{
    $nombreArchivo = "log.txt";
    // Usa file_put_contents para escribir el texto al archivo
    $texto = date("Y-m-d H:i:s") . " ". $texto . "\n";
    $resultado = file_put_contents($nombreArchivo, $texto, FILE_APPEND);
    echo $texto;

    // Comprueba si la operación fue exitosa
    if ($resultado === false) {
        echo "Error al escribir en el archivo.";
    } else {
        echo "Texto escrito en el archivo con éxito.";
    }
}
