<?php

print_r($_POST);

$id = $_POST['id'];


#if horas no válidas
if($_POST['opt'] == '-'){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=formato");
}

#if cédula menor a 8 dígitos
if(strlen($id) < 8){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=falta");

}

#if cédula menor a 8 dígitos, formato no válido y horas no válidas
if(strlen($id) < 8  && $_POST['cosa'] == 0 && $_POST['opt'] == '-'){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=id_formato_horas");

#if cédula menor a 8 dígitos y formato no válido
}else if(strlen($id) < 8 && $_POST['opt'] == '-'){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=id_formato");
}

#if formato no válido y horas no válidas
if($_POST['cosa'] == 0 && $_POST['opt'] == '-'){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=horas_formato");

#if cédula menor a 8 dígitos y horas no válidas
}else if(strlen($id) < 8 && $_POST['cosa'] == 0){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=id_horas");

#if formato no válido
}else if($_POST['cosa'] == 0){

    header("Location: ../../view/auxiliares/registrar_auxiliar.php?mensaje=horas");
}


#apartado de registro

if($_POST['cosa'] == 1){

    $horas = 6;

    if($_POST['opt'] == 'M'){
        $formato = 'MTX';
    }else if($_POST['opt'] == 'T'){
        $formato = 'TXM';
    }else if($_POST['opt'] == 'X'){
        $formato = 'XMT';
    }

}else if($_POST['cosa'] == 2){

    $horas = 8;

    if($_POST['opt'] == '8H'){
        $formato = '8H,X';
    }else if($_POST['opt'] == 'X'){
        $formato = 'X,8H';
    }

}else if($_POST['cosa'] == 3){

    $horas = 12;

    if($_POST['opt'] == 'C'){
        $formato = 'CNX';
    }else if($_POST['opt'] == 'N'){
        $formato = 'NXC';
    }else if($_POST['opt'] == 'X'){
        $formato = 'XCN';
    }

}

include('../../model/auxiliar.php');

$auxiliar = new auxiliar;

$auxiliar->registrar_auxiliar($_POST['id'],$_POST['nombre'],$_POST['telefono'],$formato,$horas);




?>