<?php
$ids = explode(",", $_POST['id']);
$id_mes = $ids[1];
$id_paciente = $ids[0];

if($id_mes == 0){

}else{
include("../../model/conexion.php");

    $verificar = $bd->query("SELECT * FROM asignación where id_paciente = $id_paciente and id_mes = $id_mes");
    $r_ver = $verificar->fetchall(PDO::FETCH_OBJ);

    if(count($r_ver) > 0){


        $tabla="

<form class='p-4' method='POST' action='../../controller/paciente/modificar_turno.php'>
<div class='table-responsive'>
<table class='table' style='width: 2000px;'>
  <thead>
    <tr>
        <th></th>
        ";
        $sqld = $bd->query("SELECT * FROM dias WHERE id_mes = $id_mes");
        $rsqld = $sqld->fetchall(PDO::FETCH_OBJ);

        foreach($rsqld as $datos_dias){

            $tabla.= "<th class='text-center' scope='col'>$datos_dias->número</th>";
            $dias[] = $datos_dias->número;
        }
      $tabla.="
    </tr>
    <tr>
            <th></th>
            ";
            $sqld = $bd->query("SELECT * FROM dias WHERE id_mes = $id_mes");
            $rsqld = $sqld->fetchall(PDO::FETCH_OBJ);

            foreach($rsqld as $datos_dias){

                $tabla.= "<th class='text-center' scope='col'>$datos_dias->dia</th>";
                
            }
        $tabla.="
    </tr>
  </thead>
  <tbody>
     ";   
        $contador = count($dias);
        $sql =$bd->query("SELECT * FROM asignación where id_paciente = $id_paciente and id_mes = $id_mes");
        $rsql = $sql->fetchall(PDO::FETCH_OBJ);

            $auxiliares_id = [];
            $auxiliares = [];
            $cedula_aux = [];
            $rsql5 = [];
            
        foreach($rsql as $datos){
            $auxiliares_id[] = $datos->id_auxiliar;
        }

        $auxiliares = array_unique($auxiliares_id);

        foreach($auxiliares as $aux){

        $sql2 = $bd->query("Select *  FROM auxiliar where Cédula = $aux");
        $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

        foreach($rsql2 as $datos2){

            $tabla.="<tr>
                 <th>$datos2->Nombre $datos2->Apellido</th>
            ";

            $sql3 = $bd->query("SELECT * FROM asignación where id_auxiliar = $aux and id_mes = $id_mes");
            $rsql3 = $sql3->fetchall(PDO::FETCH_OBJ);

            foreach($rsql3 as $datos3){

                $comprobar = $bd->query("SELECT * FROM ap where id_aux = $datos3->id_auxiliar AND id_paciente = $id_paciente");
                $r_comprobar = $comprobar->fetchall(PDO::FETCH_OBJ);

                if(count($r_comprobar) > 0){

                    $tabla.="
                            <th><input class='form-control' name='$datos3->id_asignación' type='text' value='$datos3->turno'></th>
                            ";


                }else{

                    $tabla.="
                    <th><input class='form-control' name='$datos3->id_asignación' type='text' value='$datos3->turno' disabled readonly></th>
                    ";

                }

                
            }

            $tabla.="</tr>";
        }
        }

        

        $contador_auxiliares = count($auxiliares);

        foreach($auxiliares as $id_auxiliares){

            $cedula_aux[] = $id_auxiliares;

        }

        $ar_u = [];
        $ar = [];
        $data = [];

        if($contador_auxiliares == 1){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
    
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";
                    for($i = 0; $i < $contador; $i++){
                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>";
                }
            }

           



        }else if($contador_auxiliares == 2){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0],$cedula_aux[1])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";
                    for($i = 0; $i < $contador; $i++){

                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>"; 
                }
            }

           

        }else if($contador_auxiliares == 3){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0],$cedula_aux[1],$cedula_aux[2])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";
                    for($i = 0; $i < $contador; $i++){
                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>";
                }

            }

           

        }else if($contador_auxiliares == 4){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0],$cedula_aux[1],$cedula_aux[2],$cedula_aux[3])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";
                    for($i = 0; $i < $contador; $i++){
                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>";
                }

            }

           

        }else if($contador_auxiliares == 5){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0],$cedula_aux[1],$cedula_aux[2],$cedula_aux[3],$cedula_aux[4])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";

                    for($i = 0; $i < $contador; $i++){

                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>";
            
    
                }

            }
        }else if($contador_auxiliares == 6){

            $sql4 =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente AND id_aux NOT in($cedula_aux[0],$cedula_aux[1],$cedula_aux[2],$cedula_aux[3],$cedula_aux[4],$cedula_aux[5])");
            $rsql4 = $sql4->fetchall(PDO::FETCH_OBJ);

            foreach($rsql4 as $datos4){
                $ar[] = $datos4->id_aux;
            }

            $ar_u = array_unique($ar);

            foreach($ar_u as $ar_e){
                $data[] = $ar_e;
            }

            foreach($data as $data_aux){

                $sql5 = $bd->query("SELECT * FROM auxiliar where Cédula = $data_aux");
                $rsql5 = $sql5->fetchall(PDO::FETCH_OBJ);
    
                foreach($rsql5 as $datos5){
                    $auxiliares[] = $datos5->Cédula;
                    $tabla.="<tr>
                            <th>$datos5->Nombre $datos5->Apellido</th>
                            ";

                    for($i = 0; $i < $contador; $i++){
                        $tabla.="
                             <th><input class='form-control' name='$i$datos5->Cédula' type='text'></th>
                                        ";
            
                    }
                    $contador_i = $i;
                    $tabla.="</tr>";
            
    
                }

            }
        }else{

        }

    
      
$tabla.="

  </tbody>
</table>
</div>
<div>

<div class='form-footer'>
            <div class='d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3'>
                <input type='hidden' name='contador' value='$id_paciente,$id_mes,";
                foreach($data as $dat_aux){
                    $tabla.="$dat_aux,";
                }

                
                $tabla.="'>
                <input type='submit' class='btn text-white fs-5' style='background-color: #3b9dfb' value='Modificar'>
                <div class='btn-toolbar mb-2 mb-md-0'>  
</form>
";

echo $tabla;


    }else{

    


$tabla="

<form class='p-4' method='POST' action='../../controller/paciente/añadir_turno.php'>
<div class='table-responsive'>
<table class='table' style='width: 2000px;'>
  <thead>
    <tr>
        <th></th>
        ";
        $sqld = $bd->query("SELECT * FROM dias WHERE id_mes = $id_mes");
        $rsqld = $sqld->fetchall(PDO::FETCH_OBJ);

        foreach($rsqld as $datos_dias){

            $tabla.= "<th class='text-center' scope='col'>$datos_dias->número</th>";
            $dias[] = $datos_dias->número;
        }
      $tabla.="
    </tr>
  </thead>
  <tbody>
     ";   
        $contador = count($dias);
        $sql =$bd->query("SELECT * FROM ap where id_paciente = $id_paciente");
        $rsql = $sql->fetchall(PDO::FETCH_OBJ);

        foreach($rsql as $datos){

            $sql2 = $bd->query("SELECT * FROM auxiliar where Cédula = $datos->id_aux");
            $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

            foreach($rsql2 as $datos2){

                $auxiliares[] = $datos2->Cédula;

                $tabla.="<tr>
                        <th>$datos2->Nombre $datos2->Apellido</th>
                        ";

                    for($i = 0; $i < $contador; $i++){

                        $tabla.="
                            <th><input class='form-control' name='$i$datos2->Cédula' type='text'></th>
                            ";

                    }
                    $contador_i = $i;
                    $tabla.="</tr>";

            }
            

        }

    
      
$tabla.="

  </tbody>
</table>
</div>
<div>
<div class='form-footer'>
            <div class='d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3'>
                <input type='hidden' name='contador' value='$id_paciente,$id_mes,";
                
                foreach($auxiliares as $datos_aux){
                    $tabla.= "$datos_aux,";
                }
                
                $tabla.="'>
                <input type='submit' class='btn text-white fs-5' style='background-color: #3b9dfb' value='Añadir'>
                <div class='btn-toolbar mb-2 mb-md-0'>  
</form>
";

echo $tabla;
            }
        }
?>