<?php

print_r($_POST);

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$sexo = $_POST['sexo'];
$direccion = $_POST['direccion'];
$barrio = $_POST['barrio'];
$zona = $_POST['zona'];
$telefono = $_POST['telefono'];
$eps = $_POST['eps'];
$aseguradora = $_POST['aseguradora'];
$criterio = $_POST['criterio'];
$tutela = $_POST['tutela'];
$horas = $_POST['horas'];
$gams = $_POST['gams'];
$quimico = $_POST['quimico'];

if($aseguradora == 'ECOPETROL'){

}else{

$gams = " ";
$quimico = ' ';
}

include_once('../../model/paciente.php');

$paciente = new paciente();
$paciente->registrar_paciente($id,$nombre,$apellido,$sexo,$direccion,$barrio,$zona,$telefono,$eps,$aseguradora,$criterio,$tutela,$horas,$gams,$quimico);

?>