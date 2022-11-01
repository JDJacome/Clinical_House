<?php


$obtener = explode(",",$_POST['horas']);

$horas = $obtener[0];
$paciente= $obtener[1];
include("../../model/conexion.php");

if($horas == 0){

}else{

$gestion = $bd->query("SELECT * FROM auxiliar where horas = $horas and Estado not in ('En servicio')");
$r_g = $gestion->fetchall(PDO::FETCH_OBJ);

$cadena="<label>Auxiliares</label>

    <select id='aux' name='auxiliares' class='form-control'>";
        $cadena.="<option value=' '>Selecciona un auxiliar</option>";


foreach($r_g as $datos){

    $cadena.="<option value='$datos->Cédula'>$datos->Nombre</option>";
}

echo $cadena.="</select>";

$button = "

<hr>
<div>
  <button type='submit' class='btn text-white fs-5' style='background-color: #50b4fb'; style='width: 70px;' rigth=' 20px;'>Vincular</button>
</div>


";





echo $button;
}
