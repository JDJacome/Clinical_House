<?php

$semana1=['Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles'];

$semana2=['Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves'];

$semana3=['Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes'];

$semana4=['Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado'];

$semana5=['Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'];

$semana6=['Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes'];

$semana7=['Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Lunes','Martes'];


print_r($_POST);

$nombre = $_POST['nombre'];
$dia = $_POST['dia'];
$nombre_dia = $_POST['nombre_dia'];

for($i = 0; $i < $dia; $i++){

    $días[$i] = $i+1;

    if($nombre_dia == 'Lunes'){

        $semana[$i] = $semana1[$i];

    }else if($nombre_dia == 'Martes'){

        $semana[$i] = $semana2[$i];

    }else if($nombre_dia == 'Miercoles'){

        $semana[$i] = $semana3[$i];
        
    }else if($nombre_dia == 'Jueves'){

        $semana[$i] = $semana4[$i];
        
    }else if($nombre_dia == 'Viernes'){

        $semana[$i] = $semana5[$i];
        
    }else if($nombre_dia == 'Sabado'){

        $semana[$i] = $semana6[$i];
        
    }else{

        $semana[$i] = $semana7[$i];

    }

}




print_r($días);
print_r($semana);


//definimos las variables de horas




    include_once('../../model/gestion.php');


    for($prueba = 0; $prueba < 1; $prueba++){


        $gestion = new gestion();

        $gestion->hacer_calendario($nombre);

        for($prueba2 = 0; $prueba2 < 1; $prueba2++){

            $sql = $GLOBALS['bd']->query("SELECT * FROM mes WHERE mes = '$nombre';");
            $r_sql = $sql->fetchAll(PDO::FETCH_OBJ);

            foreach($r_sql as $datos){

                $id = $datos->id_mes;
        
                }
        }
    }


    echo $nombre;
    echo $id;

    $cont_d = count($días);

    for($e = 0; $e < $cont_d; $e ++){
    

        $gestion->insertar_dias($id,$semana[$e],$días[$e]);

    }


    header('Location: ../../view/gestion/meses.php?mensaje=listo');

        
        
           
?>