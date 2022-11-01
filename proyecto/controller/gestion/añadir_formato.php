<?php
$formato = $_POST['formato'];
$horas = $_POST['horas'];

include('../../model/gestion.php');

$gestion = new gestion();
$gestion->añadir_formato($formato,$horas);

?>