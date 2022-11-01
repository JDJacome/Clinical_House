<?php

#print_r($_POST);

$i_i = explode(",",$_POST['contador']);

$ids = array_filter($i_i);
$id_paciente = $ids[0];
$id_mes = $ids[1];
#print_r($ids);


$contador_ids = count($ids);
#separar los auxiliares

for($i = 2; $i < $contador_ids;$i++){

    $auxiliar[] = $ids[$i];

}

foreach($_POST as $datos){

    $Contenido[] = $datos;

}

include("../../model/conexion.php");
$sql  = $bd->query("Select * from dias where id_mes = $id_mes");
$rsql = $sql->fetchall(PDO::FETCH_OBJ);

foreach($rsql as $datos){

    $numeros[] = $datos->número;

}

$contador_dias =count($numeros);

print_r($auxiliar);



include("../../model/paciente.php");
$paciente = new paciente();

foreach($auxiliar as $aux){

    for($i = 0; $i < $contador_dias; $i++){

        $buscador = $i . $aux;
        $turno= $_POST[$buscador];
        $paciente->añadir_turno($id_paciente,$aux,$numeros[$i],$id_mes,$turno);

    }

}

header("Location: ../../view/pacientes/pacientes.php?mensaje=turno");


?>