<?php

include('conexion.php');

class medico{

public function registrar_medico($cedula,$nombre,$apellido,$telefono,$especialidad,$contrato,$modalidad){

    $sql = $GLOBALS['bd']->prepare("INSERT INTO medico (Cédula,Nombre,Apellido,Teléfono,Especialidad,Tipo_Contrato,Modalidad) VALUES (?,?,?,?,?,?,?)");

    $rsql = $sql->execute([$cedula,$nombre,$apellido,$telefono,$especialidad,$contrato,$modalidad]);

    if($rsql === TRUE){
        header('Location: ../../view/médico/medico.php');
    }

}

}

?>