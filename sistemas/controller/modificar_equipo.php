<?php

print_r($_POST);

foreach($_POST as $datos=>$dt){
    if ($datos == "example_length") {
    }

    similar_text($datos,'id',$porcentaje);
    if($porcentaje > 70){
        $id[] = $dt;
    }

    similar_text($datos,'entrega',$porcentaje2);
    if($porcentaje2 > 70){
        $entrega[] = $dt;
    }

    similar_text($datos,'devuelto',$porcentaje3);
    if($porcentaje3 > 70){
        $devuelto[] = $dt;
    }
}

for($i = 0; $i < count($id);$i++){

    if($entrega[$i] == NULL || $entrega[$i] == " " || $fecha_entrega == '0000-00-00 00:00:00'){
        $entrega[$i] = NULL;
        $devuelto[$i] = NULL;
    }

    if($devuelto[$i] == NULL || $devuelto[$i] == " " || $devuelto[$i] == '0000-00-00 00:00:00'){
        $devuelto[$i] = NULL;
    }

    $conexion = mysqli_connect('localhost',"root","","sistemas");
    $sql = "UPDATE equipos SET Fecha_entrega = '$entrega[$i]',Fecha_devuelto = '$devuelto[$i]' WHERE id = $id[$i]";
    $rsql = mysqli_query($conexion,$sql);
}

header('Location: ../view/index.php');

?>