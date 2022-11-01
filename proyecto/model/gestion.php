<?php

    include("conexion.php");

    class gestion{

        public function enlistar_pacientes(){

            $sql = $GLOBALS['bd']->query("SELECT * FROM paciente WHERE horas > 0");
            return $sql->fetchAll(PDO::FETCH_OBJ);
        }

        public function enlistar_auxiliares($horas){

            $sql = $GLOBALS['bd']->query("SELECT * FROM auxiliar where Horas = $horas");
            return $sql->fetchAll(PDO::FETCH_OBJ);

        }

        public function hacer_calendario($mes){

            $sql = $GLOBALS['bd']->prepare('INSERT INTO mes (mes) VALUES (?)');
            $r_sql = $sql->execute([$mes]);
    
        }
    
        public function insertar_dias($mes,$dia,$numero){
    
            $sql = $GLOBALS['bd']->prepare('INSERT INTO dias (id_mes,dia,número) VALUES (?,?,?)');
            $r_sql = $sql->execute([$mes,$dia,$numero]);
    
        }

        public function añadir_formato($formato, $horas){

            $sql = $GLOBALS['bd']->prepare("INSERT INTO horas (Formato,Horas) VALUES (?,?);");
            $rsql = $sql->execute([$formato, $horas]);

            if($rsql === TRUE){
                header('Location: ../../view/gestion/horas.php');
            }

        }

        public function modificar_formato($horas,$id){

            $sql = $GLOBALS['bd']->query("UPDATE horas SET Horas = $horas WHERE id = $id");

        } 

        public function modificar_deducido($salud,$pensión){

            $sql = $GLOBALS['bd']->query("UPDATE deducido SET Salud = $salud, Pensión = $pensión");

        }



    }


?>