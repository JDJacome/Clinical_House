<?php
 include("model/conexion.php");
 $handle = fopen('prueba.txt', 'r');
 $content = fgetcsv($handle);
 foreach($content as $datos_content){
   $log[] = explode("&",$datos_content); 
 }

 $count_log = count($log);
 for($i = 0 ; $i < $count_log; $i++){
   $datos = $log[$i];
   $cedula = $datos[0];
   $nombre = $datos[1];
   $sexo = $datos[2];
   $direccion = $datos[3];
   $barrio = $datos[4];
   $zona = $datos[5];
   $telefono = $datos[6];
   $aseguradora = $datos[7];
   $tutela = $datos[8];
   $criterio = $datos[9];
   $horas = $datos[10];
   $gams = $datos[11];
   $quimico = $datos[12];

   if($aseguradora != 'Ecopetrol' && $aseguradora != 'ECOPETROL'){
	 $gams = " ";
	 $quimico = " ";

   }

   $sql = $bd->prepare("INSERT INTO `paciente` (`Cédula`, `Nombre`, `Sexo`, `Dirección`, `Barrio`, `Zona`, `Teléfono`, `Aseguradora`, `Tutela`, `Criterio`, `Horas`, `GAMS`, `Químico`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
   $rsql = $sql->execute([$cedula,$nombre,$sexo,$direccion,$barrio,$zona,$telefono,$aseguradora,$tutela,$criterio,$horas,$gams,$quimico]);
   
 }
 
?>