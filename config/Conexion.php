<?php

class Conexion {
   function _construct(){}
   
   public static function conectar() {
       $conexion = oci_connect("ProyectoAdmBDG5","grupo5","localhost/orcl");
       if (!$conexion) {
           $m = oci_error();
           echo $m['message'], "\n";
           exit;
       } else {
         return $conexion;
            
       }
   }
}

//Conexion::conectar();

?>