<?php

print_r($_POST);

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$telefono = $_POST['telefono'];
$especialidad = $_POST['especialidad'];
$tipo_contrato = $_POST['contrato'];
$modulo = $_POST['modulo'];


if(strlen($id) < 8){
    header('Location: ../../view/médico/registar_medico.php?mensaje=menor');
   
}else{

    if($modulo == '0'){
        header('Location: ../../view/médico/registar_medico.php?mensaje=menor');
    }else{
        
        include_once('../../model/medico.php');
        $medico = new medico();
        $medico->registrar_medico($id,$nombre,$apellido,$telefono,$especialidad,$tipo_contrato,$modulo);

    }

}



?>