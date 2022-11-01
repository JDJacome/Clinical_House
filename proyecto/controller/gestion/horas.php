<?php



include("../../model/gestion.php");

$gestion = new gestion();

$sql = $GLOBALS['bd']->query("SELECT * FROM horas");
$rsql = $sql->fetchall(PDO::FETCH_OBJ);

foreach($rsql as $datos){
    $ids[] = $datos->id;
}



foreach($ids as $ID){

    $id = $_POST["id$ID"];
    $horas = $_POST["horas$ID"];
    
    $gestion->modificar_formato($horas,$id);
 
}

header('Location: ../../view/gestion/horas.php');

?>