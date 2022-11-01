<?php

    include("conexion.php");

    class auxiliar{

        public function registrar_auxiliar($cedula,$nombre,$apellido,$telefono,$formato,$horas){

            $sql = $GLOBALS['bd']->prepare("INSERT INTO auxiliar (Cédula,Nombre,Apellido,Teléfono,Formato,Horas) VALUES (?,?,?,?,?,?)");

            $rsql = $sql->execute([$cedula,$nombre,$apellido,$telefono,$formato,$horas]);

            if($rsql == 1){
                header('Location: ../../view/auxiliares/auxiliares.php?mensaje=registrado');
            }
        }

    }

?>