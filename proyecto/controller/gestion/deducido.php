<?php

include('../../model/gestion.php');
print_r($_POST);

$gestion = new gestion();

$gestion->modificar_deducido($_POST['Salud'],$_POST['Pensión']);

header('Location: ../../view/gestion/deducido.php');

?>