<?php

print_r($_POST);
include("../../model/conexion.php");
$usuario = $_POST['txt'];
$contraseña = $_POST['pswd'];

if($usuario == 'root'){

    $sql = $bd->query("SELECT * FROM sesión WHERE usuario = '$usuario' AND contraseña = '$contraseña'");
    $rsql = $sql->fetchall(PDO::FETCH_OBJ);

    if(count($rsql) > 0){
        header("Location: ../../modulos.html");
    }else{
        header("Location: ../../../index.html");
    }

}else{

    $sql = $bd->query("SELECT * FROM sesión WHERE usuario = '$usuario' AND contraseña = '$contraseña'");
    $rsql = $sql->fetchall(PDO::FETCH_OBJ);

    if(count($rsql) > 0){
        header("Location: ../../inicio_asignación.html");
    }else{
        header("Location: ../../../index.html");
    }

}




?>