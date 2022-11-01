<?php

$paso1 = explode(",",$_POST['contador']);
$ids = array_filter($paso1);
$id_paciente = $ids[0];
$id_mes = $ids[1];
$contador_ids = count($ids);
include('../../model/paciente.php');


$sql = $GLOBALS['bd']->query("SELECT * FROM asignación where id_mes = $id_mes AND id_paciente = $id_paciente");
$rsql = $sql->fetchall(PDO::FETCH_OBJ);

$paciente = new paciente();

foreach($rsql as $datos){

    $comprobar = $GLOBALS['bd']->query("SELECT * FROM ap where id_aux = $datos->id_auxiliar");
    $r_comprobar = $comprobar->fetchall(PDO::FETCH_OBJ);
    
    if(count($r_comprobar) > 0){

        foreach($r_comprobar as $datos_comprobar){

            $sql_f = $GLOBALS['bd']->query("SELECT * FROM asignación where id_mes = $id_mes AND id_paciente = $id_paciente AND id_auxiliar = $datos_comprobar->id_aux");
            $rsql_f = $sql_f->fetchall(PDO::FETCH_OBJ);

            foreach($rsql_f as $datos_f){

                $paciente->modificar_turno($_POST[$datos_f->id_asignación],$datos_f->id_asignación);
            }

        }

    }else{

    }

   
}




if(count($ids) > 2){

    $sql2 = $GLOBALS['bd']->query("SELECT * FROM dias where id_mes = $id_mes");
    $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

    foreach($rsql2 as $datos2){
        $dias[] = $datos2->número; 
    }

    $contador_dias = count($dias);

    
    for($i = 2; $i < $contador_ids;$i++){

        $auxiliar[] = $ids[$i];

    }

    foreach($auxiliar as $datos3){
        
        for($i = 0; $i < $contador_dias; $i++){

            $buscador = $i . $datos3;
            $turno= $_POST[$buscador];
            $paciente->añadir_turno($id_paciente,$datos3,$dias[$i],$id_mes,$turno);
    
        }

    }

}
error_reporting(0);


header("Location: ../../view/pacientes/pacientes.php?mensaje=turno_modificado");


?>