<?php

$count = $_POST['contador'];
$cedula = [];
include_once("../../model/conexion.php");
$contador = 0;
foreach ($_POST as $datos => $dt) {

    if ($datos == "example_length") {
    }

    similar_text($datos, 'cédula', $percent);

    if ($percent > 60) {
        $cedula[] = $dt;
        
    }

    similar_text($datos, 'sexo', $percent3);

    if ($percent3 > 60) {
        $sexo[] = $dt;
    }

    similar_text($datos, 'direccion', $percent4);

    if ($percent4 > 60) {
        $direccion[] = $dt;
    }

    similar_text($datos, 'barrio', $percent5);

    if ($percent5 > 60) {
        $barrio[] = $dt;
    }
    similar_text($datos, 'zona', $percent6);

    if ($percent6 > 60) {
        $zona[] = $dt;
    }
    similar_text($datos, 'telefono', $percent7);

    if ($percent7 > 60) {
        $telefono[] = $dt;
    }
    similar_text($datos, 'aseguradura', $percent8);

    if ($percent8 > 60) {
        $aseguradora[] = $dt;
    }
    similar_text($datos, 'tutela', $percent9);

    if ($percent9 > 60) {
        $tutela[] = $dt;
    }
    similar_text($datos, 'criterio', $percent10);

    if ($percent10 > 60) {
        $criterio[] = $dt;
    }
    similar_text($datos, 'horas', $percent11);

    if ($percent11 > 60) {
        $horas[] = $dt;
    }

    similar_text($datos, 'gams', $percent12);

    if ($percent12 > 60) {
        $gams[] = $dt;
    }

    similar_text($datos, 'quimico', $percent13);

    if ($percent13 > 80) {
        $quimico[] = $dt;
    }



}

print_r($barrio);

for($i = 0; $i < count($cedula); $i++){

    $conexion = mysqli_connect('localhost',"root","","clinical_house");
    $sql ="UPDATE `paciente` SET  Sexo = '$sexo[$i]',Dirección = '$direccion[$i]', Barrio = '$barrio[$i]', Zona = '$zona[$i]', Teléfono = $telefono[$i], Aseguradora = '$aseguradora[$i]', Tutela = '$tutela[$i]', Criterio = '$criterio[$i]', Horas = $horas[$i], GAMS = '$gams[$i]', Químico = '$quimico[$i]' WHERE Cédula = $cedula[$i]";
    $rsql = mysqli_query($conexion,$sql);

}

header("Location: ../../view/pacientes/pacientes.php");
    
