<?php

include("conexion.php");

class paciente{


    public function registrar_paciente($id,$nombre,$apellido,$sexo,$direccion,$barrio,$zona,$telefono,$eps,$aseguradora,$criterio,$tutela,$horas,$gams,$quimico){

        $sql = $GLOBALS['bd']->prepare("INSERT INTO `paciente` (`Cédula`, `Nombre`, `Apellido`, `Sexo`, `Dirección`, `Barrio`, `Zona`, `Teléfono`, `EPS`, `Aseguradora`, `Tutela`, `Criterio`, `Horas`, `GAMS`, `Químico`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $resul = $sql->execute([$id,$nombre,$apellido,$sexo,$direccion,$barrio,$zona,$telefono,$eps,$aseguradora,$criterio,$tutela,$horas,$gams,$quimico]);

    }

    public function modificar_paciente($id,$nombre,$apellido,$sexo,$direccion,$barrio,$zona,$telefono,$eps,$aseguradora,$criterio,$tutela,$horas,$gams,$quimico){

        $sql = $GLOBALS['bd']->prepare("UPDATE `paciente` SET Nombre = ?, Apellido = ?, Sexo = ?,Dirección = ?, Barrio = ?, Zona = ?, Teléfono = ?, EPS = ?, Aseguradora = ?, Tutela = ?, Criterio = ?, Horas = ?, GAMS = ?, Químico = ? WHERE Cédula = ?");
        $resul = $sql->execute([$nombre,$apellido,$sexo,$direccion,$barrio,$zona,$telefono,$eps,$aseguradora,$criterio,$tutela,$horas,$gams,$quimico,$id]);

    }

    public function añadir_aux($id_p,$id_aux){

        $sql = $GLOBALS['bd']->prepare("INSERT INTO ap (id_paciente,id_aux) VALUES (?,?)");
        $rsql = $sql->execute([$id_p,$id_aux]);

    }

    public function poner_estado($id_aux){

        $sql2 = $GLOBALS['bd']->query("UPDATE auxiliar SET Estado = 'En servicio' WHERE Cédula = $id_aux");

    }

    public function desvincular_aux($id_p,$id_aux){

        $sql = $GLOBALS['bd']->query("DELETE FROM ap WHERE id_paciente = $id_p AND id_aux = $id_aux");

    }

    public function quitar_servicio($id_aux){

        $sql2 = $GLOBALS['bd']->query("UPDATE auxiliar SET Estado = ' ' WHERE Cédula = $id_aux");

    }

    public function añadir_turno($id_pac,$id_aux,$dia,$id_mes,$turno){

        $sql = $GLOBALS['bd']->prepare("INSERT INTO asignación (id_paciente,id_auxiliar,dia,id_mes,turno) VALUES (?,?,?,?,?)");
        $rsql = $sql->execute([$id_pac,$id_aux,$dia,$id_mes,$turno]);

    }

    public function modificar_turno($turno,$id_asignación){
        $sql = $GLOBALS['bd']->prepare("UPDATE asignación SET turno = ? WHERE id_asignación = ?;");
        $rsql = $sql->execute([$turno,$id_asignación]);
    }


}


?>