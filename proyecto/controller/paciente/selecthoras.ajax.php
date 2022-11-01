<?php
$horas = $_POST['id'];
include("../../model/conexion.php");

$gestion = new gestion();
$r_gestion = $gestion->enlistar_pacientes($horas);

var_dump($r_gestion);
?>