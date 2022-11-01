<?php
$ids = explode(",",$_GET['id']);

print_r($ids);

include_once("../../model/paciente.php");
$paciente = new paciente();
$paciente->desvincular_aux($ids[0],$ids[1]);
$paciente->quitar_servicio($ids[1]);

header("Location: pacientes.php?mensaje=desvinculado");
