<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
</head>
<body>
<?php  
// Crear conexion con Oracle
$conexion = oci_connect("hr", "hr", "localhost/xe"); 
 
if (!$conexion) {    
    $m = oci_error();    
    echo $m['message'], "\n";    
    exit; 
} else {    
    echo "¡Conexión con éxito a Oracle!<br>"; 
} 

$SELECT = oci_parse($conexion, "SELECT * FROM employees WHERE employee_id = 100");
oci_execute($SELECT);

// Muestra los resultados
while ($row = oci_fetch_assoc($SELECT)) {
    echo "Employee ID: " . $row['EMPLOYEE_ID'] . "<br>";
    echo "First Name: " . $row['FIRST_NAME'] . "<br>";
    echo "Last Name: " . $row['LAST_NAME'] . "<br>";
}

oci_free_statement($SELECT);
oci_close($conexion);
?>
</body>
</html>

