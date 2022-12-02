<?php

    print_r($_POST);
    $t_equipo = $_POST['t_equipo'];
    $desc = $_POST['desc'];
    $n_sede = $_POST['n_sede'];
    $direc = $_POST['direc'];
    $tel_empresa  = $_POST['tel_empresa'];
    $email = $_POST['email'];
    $n_equipo = $_POST['n_equipo'];
    $model = $_POST['model'];
    $marc = $_POST['marc'];
    $fabric = $_POST['fabric'];
    $n_serie = $_POST['n_serie'];
    $c_equipo = $_POST['c_equipo'];
    $n_inventario = $_POST['n_inventario'];
    $area = $_POST['area'];
    $contac = $_POST['contac'];
    $respon = $_POST['respon'];
    $adquisición = $_POST['adquisición'];
    $f_mantenimiento = $_POST['f_mantenimiento'];

    print_r($_FILES);
    include_once('../model/conexion.php');
    $tamaño = $_FILES['imagen']['size'];
    $imagensubida = fopen($_FILES['imagen']['tmp_name'],'r');
    $imagenbinary = fread($imagensubida,$tamaño);

    $conexion = mysqli_connect('localhost',"root","","sistemas");
    $imageninbinary = mysqli_escape_string($conexion,$imagenbinary);
    ECHO $imageninbinary;
    
    $sql = "INSERT INTO `sistemas`.`equipos` (`Tipo_equipo`, `Descripción`, `Nombre_sede`, `Dirección`, `Teléfono`, `Mail`, `Nombre_equipo`, `Modelo`, `Marca`, `Fabricante`, `Número_serie`,`Código_equipo` ,`Número_inventario`,`Imagen` ,`Área`, `Contacto`, `Responsable`, `Adquisición`, `Frecuencia_mantenimiento`) Values ('$t_equipo','$desc','$n_sede','$direc',$tel_empresa,'$email','$n_equipo','$c_equipo','$model','$marc','$fabric','$n_serie',$n_inventario,'$imageninbinary','$area',$contac,'$respon','$adquisición','$f_mantenimiento')";

    $rsql = mysqli_query($conexion,$sql);
?>