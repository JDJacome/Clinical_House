<?php

$obtener = explode(",",$_POST['cosa']);

$aux = $_POST['auxiliares'];

print_r($_POST);

if($aux == ' '){

    header("Location: ../../view/pacientes/pacientes.php?mensaje=noaux");

}else{

    include('../../model/paciente.php');
    $paciente = new paciente();

    for($i = 0; $i < 1 ; $i++){

        $paciente->añadir_aux($obtener[1], $aux);
        $paciente->poner_estado($aux);

    }

    header("Location: ../../view/pacientes/pacientes.php?mensaje=aux");


}
?>