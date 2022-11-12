<?php
$paciente = $_POST['id'];


include("../../model/conexion.php");

if($paciente == 0){
  
}else{



$tabla="
<hr>

<table class='table'>
  <thead>
    <tr>
      <th scope='col'>Paciente</th>
      <th scope='col'>Auxiiar</th>
      <th ecope='col'>Desvincular al Paciente</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    ";
      $sql = $bd->query("SELECT * FROM ap WHERE id_paciente = $paciente");
      $rsql = $sql->fetchall(PDO::FETCH_OBJ);

      foreach($rsql as $ap){

        $sql2 = $bd->query("SELECT * FROM paciente WHERE Cédula = $ap->id_paciente");
        $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

        foreach($rsql2 as $pac){
            $tabla.="
            <th>$pac->Nombre  $pac->Apellido</th>";
        }

        $sql3 = $bd->query("SELECT * FROM auxiliar WHERE Cédula = $ap->id_aux");
        $rsql3 = $sql3->fetchall(PDO::FETCH_OBJ);

        foreach($rsql3 as $aux){
            $tabla.="
            <th>$aux->Nombre  $aux->Apellido</th>
            <th><a href='desvincular.php?id=$paciente,$aux->Cédula'><button class='btn text-white' style='background-color: #DB1F00;'>Desvincular</button></a><th>
            ";
        }

        $tabla.="</tr>";


      }
$tabla.="

  </tbody>
</table>
";

echo $tabla;
    }
?>