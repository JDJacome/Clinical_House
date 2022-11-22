<?php

print_r($_POST);

$count = $_POST['contador'];

include_once("../../model/paciente.php");
$paciente = new paciente();
$contador = 0;
foreach($_POST as $datos=>$dt){
    print_r($datos);
    if($datos == "example_length"){
        
    }

    similar_text($datos, 'cédula', $percent);
    
    if($percent > 80){
        $cedula = $dt;
       
    }

    
    similar_text($datos, 'nombre', $percent2);

    if($percent2 > 80){
        $nombre = $dt;
    }

    similar_text($datos, 'sexo', $percent3);

    if($percent3 > 80){
        $sexo = $dt;
    }

    similar_text($datos, 'direccion', $percent4);

    if($percent4 > 80){
        $direccion = $dt;
    }

    similar_text($datos, 'barrio', $percent5);

    if($percent5 > 80){
        $barrio = $dt;
    }
    similar_text($datos, 'zona', $percent6);

    if($percent6 > 80){
        $zona = $dt;
    }
    similar_text($datos, 'telefono', $percent7);

    if($percent7 > 80){
        $telefono = $dt;
    }
    similar_text($datos, 'aseguradura', $percent8);

    if($percent8 > 80){
        $aseguradora = $dt;
    }
    similar_text($datos, 'tutela', $percent9);

    if($percent9 > 80){
        $tutela = $dt;
    }
    similar_text($datos, 'criterio', $percent10);

    if($percent10 > 80){
        $criterio = $dt;
    }
    similar_text($datos, 'horas', $percent11);

    if($percent11 > 80){
        $horas = $dt;
    }

    similar_text($datos, 'gams', $percent12);

    if($percent12 > 80){
        $gams = $dt;
    }

    similar_text($datos, 'quimico', $percent13);

    if($percent13 > 80){
        $quimico = $dt;
    }

    
}
 echo "\n $contador \n";
/*for($i = 0; $i < $count; $i++){

    if($_POST["aseguradora$i"] == 'ECOPETROL' ||$_POST["aseguradora$i"] == 'Ecopetrol' || $_POST["aseguradora$i"] == 'ecopetrol'){

    }else{
    
    $_POST["gams$i"] = " ";
    $_POST["quimico$i"] = ' ';
    }

    if($_POST["tutela$i"] == 'si' || $_POST["criterio$i"] == 'si' ||$_POST["tutela$i"] == 'Si' || $_POST["criterio$i"] == 'Si' || $_POST["tutela$i"] == 'SI' || $_POST["criterio$i"] == 'SI'){
        
    }else{
        $_POST["horas$i"] = ' ';
    }


   $paciente->modificar_paciente($_POST["cédula$i"],$_POST["nombre$i"],$_POST["sexo$i"],$_POST["dire ccion$i"],$_POST["barrio$i"],$_POST["zona$i"],$_POST["telefono$i"],$_POST["eps$i"],$_POST["aseguradora$i"],$_POST["tutela$i"],$_POST["criterio$i"],$_POST["horas$i"],$_POST["gams$i"],$_POST["quimico$i"]);
}

header("Location: ../../view/pacientes/pacientes.php");
*/
?>