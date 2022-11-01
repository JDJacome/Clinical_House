<?php

print_r($_POST);

$count = $_POST['contador'];

include_once("../../model/paciente.php");
$paciente = new paciente();

for($i = 0; $i < $count; $i++){

    if($_POST["aseguradora$i"] == 'ECOPETROL' ||$_POST["aseguradora$i"] == 'Ecopetrol' || $_POST["aseguradora$i"] == 'ecopetrol'){

    }else{
    
    $_POST["gams$i"] = " ";
    $_POST["quimico$i"] = ' ';
    }

    if($_POST["tutela$i"] == 'si' || $_POST["criterio$i"] == 'si' ||$_POST["tutela$i"] == 'Si' || $_POST["criterio$i"] == 'Si' || $_POST["tutela$i"] == 'SI' || $_POST["criterio$i"] == 'SI'){
        
    }else{
        $_POST["horas$i"] = ' ';
    }


   $paciente->modificar_paciente($_POST["cédula$i"],$_POST["nombre$i"],$_POST["apellido$i"],$_POST["sexo$i"],$_POST["direccion$i"],$_POST["barrio$i"],$_POST["zona$i"],$_POST["telefono$i"],$_POST["eps$i"],$_POST["aseguradora$i"],$_POST["tutela$i"],$_POST["criterio$i"],$_POST["horas$i"],$_POST["gams$i"],$_POST["quimico$i"]);
}

header("Location: ../../view/pacientes/pacientes.php");

?>