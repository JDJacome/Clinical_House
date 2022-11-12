<?php
$id = $_POST['id'];
include("../../model/conexion.php");

if($id == 0){

}else{

    $tabla=" <div class='container'>
    <form class='p-4' method='POST' action='../../controller/gestion/poliza.php'>
      <div class='table-responsive' id='tabla_responsiva'>
        <table class='table table-light' style='width: 2200px;'>

          <thead>
            <tr>
              <th class='text-center' style='width: 700px; color: #50b4fb;' scope='col'>Nombre</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Identificación</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Salario Básico</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Auxilio de Transporte</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Horas Laboradas al mes</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Dias Laborados</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Sueldo mes</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>N° horas Extras</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Horas Extras</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Recargo Nocturno</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Recargo Dominical</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Recargo Dominical Nocturno</th>
              <th class='text-center' style='width: 200px; color: #50b4fb;' scope='col'>Total Devengado</th>
              <th class='text-center' style='width: 150px; color: #50b4fb;' scope='col'>Salud</th>
              <th class='text-center' style='width: 150px; color: #50b4fb;' scope='col'>Pensión</th>
              <th class='text-center' style='width: 150px; color: #50b4fb;' scope='col'>Poliza Fepazde</th>
              <th class='text-center' style='width: 150px; color: #50b4fb;' scope='col'>Bonificación PTE VM</th>
              <th class='text-center' style='width: 150px; color: #50b4fb;' scope='col'>Total Deducido</th>
              <th class='text-center' style='width: 220px; color: #50b4fb;' scope='col'>Neto a Pagar</th>
            </tr>
          </thead>

          <body>

           ";

           

            $sql = $bd->query("SELECT * FROM auxiliar");
            $rsql = $sql->fetchall(PDO::FETCH_OBJ);

            foreach ($rsql as $datos) {
              $GLOBALS['salario'] = $datos->Salario_básico;
            
             $tabla.="<tr>
                <td><input type='text' class='form-control' name='nombre $datos->Cédula' autofocus value=' $datos->Nombre  $datos->Apellido'></td>
                <td><input type='text' class='form-control' name='cedula $datos->Cédula' autofocus value=' $datos->Cédula'></td>
                <td><input type='text' class='form-control' name='salario $datos->Cédula' autofocus value=' $datos->Salario_básico'></td>
                <td><input type='text' class='form-control' name='transporte $datos->Cédula' autofocus value='$datos->Auxilio_transporte'></td>

                ";
                $valor_extras = 0;
                $valor_nocturno = 0;
                $valor_dominical = 0;
                $valor_nocturno_dominical = 0;
                $horas_nocturnas = 0;
                $horas_dominical = 0;
                $horas_nocturnas_dominical = 0;
                $horas_extras = 0;
                $extras = 0;
                $total_extras = 0;
                $total_nocturno = 0;
                $total_dominical = 0;
                $total_nocturno_dominical = 0;
                $contador = 0;
                $cont = 0;
                $contador_horas = 0;
                $contador_dias = 0;
                $sql2 = $bd->query("SELECT * FROM asignación where id_auxiliar = $datos->Cédula AND turno NOT in(' ') and id_mes = $id");
                $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

                foreach ($rsql2 as $datos2) {

                  $number = $datos2->dia;
                  $turno = strtoupper($datos2->turno);

                  $formato = $bd->query("SELECT * FROM horas");
                  $r_formato = $formato->fetchall(PDO::FETCH_OBJ);

                  foreach ($r_formato as $dato_f) {

                    if ($dato_f->Formato == $turno) {

                      $sql3 = $bd->query("SELECT * FROM dias where número = $number AND id_mes = $id");
                      $rsql3 = $sql3->fetchall(PDO::FETCH_OBJ);

                      foreach ($rsql3 as $datos3) {

                        $semana = $datos3->dia;

                        if ($semana == 'Domingo' and $dato_f->Formato == 'N') {
                          $horas_nocturnas_dominical = $horas_nocturnas_dominical + $dato_f->Horas;
                        } else if ($semana != 'Domingo' and $dato_f->Formato == 'N') {
                          $horas_nocturnas = $horas_nocturnas + $dato_f->Horas;
                        } elseif ($semana == 'Domingo' and $dato_f->Formato != 'N') {
                          $horas_dominical = $horas_dominical + $dato_f->Horas;
                        }
                      

                      }

                      if($turno === "X"){
                        $cont = 0;
                      }else{
                        $cont = 1;
                      }

                      $contador = $contador + $dato_f->Horas;
                    }
                  }
                  $contador_dias = $cont + $contador_dias;
                }

                if ($contador >= 192) {
                  $extras = $contador - 192;
                  $contador_horas = 192;
                  $valor_extras = ($GLOBALS['salario'] / 240) * 1.25;
                  $horas_extras = $extras * $valor_extras;
                } else {
                  $contador_horas = $contador;
                }



                if ($horas_nocturnas > 0) {
                  $valor_nocturno = ($GLOBALS['salario'] / 240) * 0.35;
                  $total_nocturno = $valor_nocturno * $horas_nocturnas;
                }


                if ($horas_dominical > 0) {
                  $valor_dominical = ($GLOBALS['salario'] / 240) * 0.75;
                  $total_dominical = $valor_dominical * $horas_dominical;
                }

                if ($horas_nocturnas_dominical > 0) {
                  $valor_nocturno_dominical = ($GLOBALS['salario'] / 240) * 1.1;
                  $total_nocturno_dominical = $valor_nocturno_dominical * $horas_nocturnas_dominical;
                }

                $sueldo_mensual = $datos->Salario_básico + $datos->Auxilio_transporte;
                $devengado = $total_nocturno_dominical + $total_dominical + $total_nocturno + $horas_extras + ($datos->Salario_básico + $datos->Auxilio_transporte);

                $tabla.="
                <td><input type='text' class='form-control' name='n°horas $datos->Cédula' autofocus value='$contador_horas'></td>
                <td><input type='text' class='form-control' name='d_trabajo $datos->Cédula' autofocus value='$contador_dias'></td>
                <td><input type='text' class='form-control' name='sueldo_mes $datos->Cédula' autofocus value='$sueldo_mensual'></td>
                <td><input type='text' class='form-control' name='horas_extra $datos->Cédula' autofocus value='$extras'></td>
                <td><input type='text' class='form-control' name='horas_extra $datos->Cédula' autofocus value='$horas_extras'></td>
                <td><input type='text' class='form-control' name='t_nocturno $datos->Cédula' autofocus value='$total_nocturno'></td>
                <td><input type='text' class='form-control' name='t_dominical $datos->Cédula' autofocus value='$total_dominical'></td>
                <td><input type='text' class='form-control' name='t_n_dominical $datos->Cédula' autofocus value='$total_nocturno_dominical'></td>
                <td><input type='text' class='form-control' name='devengado $datos->Cédula' autofocus value='$devengado'></td>
                ";
               
                $datos4 = $bd->query("SELECT * FROM deducido");
                $rsql4 = $datos4->fetchall(PDO::FETCH_OBJ);
                foreach ($rsql4 as $datos4) {
                
                    $tabla.= "<td><input type='text' class='form-control' name='salud $datos->Cédula' autofocus value='$datos4->Salud'></td>
                    <td><input type='text' class='form-control' name='pension $datos->Cédula' autofocus value='$datos4->Pensión'></td>
                    ";
                
                }
                
                $deducido = $datos4->Salud + $datos4->Pensión;
                $neto = $devengado - $datos->Poliza_Fepazde - $datos->Bonificación_PTEVM - $deducido;

                $tabla.= "
                <td><input type='text' class='form-control' name='poliza $datos->Cédula ?>' autofocus value='$datos->Poliza_Fepazde'></td>
                <td><input type='text' class='form-control' name='bonificacion $datos->Cédula ?>' autofocus value='$datos->Bonificación_PTEVM'></td>
                <td><input type='text' class='form-control' name='deducido $datos->Cédula ?>' autofocus value='$deducido'></td>
                <td><input type='text' class='form-control' name='neto $datos->Cédula ?>' autofocus value='$neto'></td>
              </tr>
              ";

            

            }
           
            $tabla.="
          </body>
        </table>
      </div>
";

echo $tabla;


}


?>