<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>Dashboard Template · Bootstrap v5.2</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="../../estilos.css">
  <script src="../../js/jquery.min.js"></script>


  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link href="../../../assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    .input::-webkit-outer-spin-button,
    .input::-webkit-inner-spin-button {
      -webkit-appearance: none;
    }

    .createFollowCheck input[type="number"] {
      -moz-appearance: textfield;
    }

    #exampleModal {

      z-index: -1;

    }

    body{
      font-family: 'Poppins', sans-serif;
    }



    #tabla_turnos {

      z-index: -1;

    }
  </style>


  <!-- Custom styles for this template -->
  <link href="dashboard.css" rel="stylesheet">
</head>

<body>

<header class="navbar navbar-light sticky-top flex-md-nowrap p-0 shadow" style="background-color: #fff;">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-4" href="#" style="background-color: #bddffa;">Gestion IPSCH</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
      <div class="nav-item text-nowrap">
        <a class="nav-link px-3" href="../../../index.html">Sign out</a>
      </div>
    </div>
  </header>

  <div class="container-fluid">
    <div class="row">
      <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-white sidebar collapse">
        <div class="position-sticky pt-3 sidebar-sticky">
          <ul class="nav flex-column">


          <li class="py-3"></li>
            <li class="list__item">
                <div class="list__button">
                    <img src="../../../assets/home.png" style="width: 30px;" class="list__img">
                    <a href="../../inicio.php" class="nav__link">Inicio</a>
                </div>
            </li>

            <li class="list__item">
                <div class="list__button">
                <img src="../../../assets/medico.svg" style="width: 30px;" class="list__img">
                    <a href="../auxiliares/auxiliares.php" class="nav__link">Auxiliares</a>
                </div>
            </li>
            <li class="list__item">
                <div class="list__button">
                    <img src="../../../assets/patient.png" style="width: 30px;" class="list__img">
                    <a href="pacientes.php" class="nav__link">Pacientes</a>
                </div>
            </li>
            <li class="list__item">
                <div class="list__button">
                    <img src="../../../assets/stats.svg" style="width: 30px;" class="list__img">
                    <a href="#" class="nav__link">Contabilidad</a>
                </div>
            </li>
            <li class="list__item list__item--click">
                <div class="list__button list__button--click">
                    <img src="../../../assets/dashboard.svg" style="width: 30px;" class="list__img">
                    <a href="#" class="nav__link">Parámetros</a>
                    <img src="../../../assets/arrow.svg" class="list__arrow">
                </div>

                <ul class="list__show">
                    <li class="list__inside">
                        <a href="../gestion/meses.php" class="nav__link nav__link--inside">Meses</a>
                    </li>

                    <li class="list__inside">
                        <a href="../gestion/poliza.php" class="nav__link nav__link--inside">Poliza</a>
                    </li>

                    <li class="list__inside">
                        <a href="../gestion/horas.php" class="nav__link nav__link--inside">Horas</a>
                    </li>

                    <li class="list__inside">
                        <a href="../gestion/deducido.php" class="nav__link nav__link--inside">Deducido</a>
                    </li>
                </ul>

            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="color: #50b4fb; font-weight: bolder;">Pacientes</h1>
          <div class="btn-toolbar mb-2 mb-md-0">

            <div>
              <div>
                <a href="../../usua.php"><button class="btn text-white fs-5" style="background-color: #50b4fb;">Añadir pacientes</button></a>
                <a href="registrar_paciente.php"><button class="btn text-white fs-5" style="background-color: #50b4fb;">Añadir paciente</button></a>
              </div>
            </div>

          </div>
        </div>



        <div class="container">
          <form class="p-4" method="POST" action="../../controller/paciente/modificar_paciente.php">
             <div class="table-responsive" style="position:sticky;">
              <table class="table table-striped" style="width: 2000px;"  id="example">
                <thead>
                  <tr>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Cédula</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Nombre</th>
                    <th class="text-center" style="width: 70px; color: #50b4fb;" scope="col">Sexo</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Dirección</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Barrio</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Zona</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Teléfono</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Aseguradora</th>
                    <th class="text-center" style="width: 80px; color: #50b4fb;" scope="col">Tutela</th>
                    <th class="text-center" style="width: 80px; color: #50b4fb;" scope="col">Criterio</th>
                    <th class="text-center" style="width: 80px; color: #50b4fb;" scope="col">Horas</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">GAMS</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Químico</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  include_once("../../model/conexion.php");
                  $sql = $bd->query("SELECT * FROM paciente ORDER BY Nombre");
                  $rsql = $sql->fetchall(PDO::FETCH_OBJ);
                  foreach ($rsql as $datos) {

                    $cedula[] = $datos->Cédula;
                    $nombres[] = $datos->Nombre;
                    $sexo[] = $datos->Sexo;
                    $direccion[] = $datos->Dirección;
                    $barrio[] = $datos->Barrio;
                    $zona[] = $datos->Zona;
                    $telefono[] = $datos->Teléfono;
                    $aseguradora[] = $datos->Aseguradora;
                    $tutela[] = $datos->Tutela;
                    $criterio[] = $datos->Criterio;
                    $horas[] = $datos->Horas;
                    $gams[] = $datos->GAMS;
                    $quimico[] = $datos->Químico;
                  }

                  $contador = count($rsql);

                  for ($i = 0; $i < $contador; $i++) {


                  ?>
                  
                    <tr>
                      <th scope="row" class="prueba"><?php echo $cedula[$i] ?><input type="hidden" class="form-control noscroll" name="cédula<?php echo $i ?>" autofocus value="<?php echo $cedula[$i] ?>"></th>
                      <td><?php echo $nombres[$i] ?></td>
                      <td><?php $sexo[$i] ?><input type="text" class="form-control" name="sexo<?php echo $i ?>" autofocus value="<?php echo $sexo[$i] ?>"></td>
                      <td><?php $direccion[$i] ?><input type="text" class="form-control" name="direccion<?php echo $i ?>" autofocus value="<?php echo $direccion[$i] ?>"></td>
                      <td><?php $barrio[$i] ?><input type="text" class="form-control" name="barrio<?php echo $i ?>" autofocus value="<?php echo $barrio[$i] ?>"></td>
                      <td><?php $zona[$i] ?><input type="text" class="form-control" name="zona<?php echo $i ?>" autofocus value="<?php echo $zona[$i] ?>"></td>
                      <td><?php $telefono[$i] ?><input type="text" class="form-control" name="telefono<?php echo $i ?>" autofocus value="<?php echo $telefono[$i] ?>"></td>
                      <td><?php $aseguradora[$i] ?><input type="text" class="form-control" name="aseguradora<?php echo $i ?>" autofocus value="<?php echo $aseguradora[$i] ?>"></td>
                      <td><?php $tutela[$i] ?><input type="text" class="form-control" name="tutela<?php echo $i ?>" autofocus value="<?php echo $tutela[$i] ?>"></td>
                      <td><?php $criterio[$i] ?><input type="text" class="form-control" name="criterio<?php echo $i ?>" autofocus value="<?php echo $criterio[$i] ?>"></td>
                      <td><?php $horas[$i] ?><input type="text" class="form-control" name="horas<?php echo $i ?>" autofocus value="<?php echo $horas[$i] ?>"></td>
                      <td><?php $gams[$i] ?><input type="text" class="form-control" name="gams<?php echo $i ?>" autofocus value="<?php echo $gams[$i] ?>"></td>
                      <td><?php $quimico[$i] ?><input type="text" class="form-control" name="quimico<?php echo $i ?>" autofocus value="<?php echo $quimico[$i] ?>"></td>
                    </tr>
                  <?php
                  }
                  ?>
                </tbody>
              </table>
            </div>
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
              <input type="hidden" name="contador" value="<?php echo $contador ?>">
              <input type="submit" class="btn text-white fs-5" style="background-color: #3b9dfb" value="Modificar">
              <div class="btn-toolbar mb-2 mb-md-0">
          </form>
          <div>
            <div>
              <button type="button" class="btn fs-5 text-white" style="background-color: #A1A0A4;" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="subir()">
                Asignar auxiliares
              </button>
            </div>
          </div>

        </div>
    </div>


    <div class="modal fade modal-data-bs-toogle h-100 d-flex flex-column justify-content-center" data-toggle="modal" data-backdrop="static" data-keyboard="false" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="overflow-y: scroll;">
          <div class="modal-header">
            <h1 class="modal-title fs-3" style="color: #3b9dfb;" id="exampleModalLabel">Asignación de auxiliares</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form name="formulario1" method="POST" action="../../controller/paciente/añadir_aux.php">
              <div class="form-group">
                <select class="form-control" id="pacientesid" name="cosa" onchange="cambia();tabla()">
                  <option value=" ">Seleccione el paciente</option>
                  <?PHP
                  include_once("../../model/conexion.php");
                  $model = $bd->query("SELECT * FROM paciente WHERE Horas > 0 ORDER BY Nombre");
                  $modelo = $model->fetchAll(PDO::FETCH_OBJ);
                  foreach ($modelo as $datos_paciente) {
                  ?>
                    <option value="<?php echo $datos_paciente->Horas . ',' . $datos_paciente->Cédula ?>"><?php echo $datos_paciente->Nombre?></option>");
                  <?php
                  }
                  ?>
                </select>


              </div>

              <hr>

              <div id="lista_aux">
              </div>

              <hr>

            </form>

            <div id="tabla_aux">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" onclick="cerrar()" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn text-white" style='background-color: #50b4fb;' onclick="modal()" data-bs-toggle="modal" data-bs-target="#tabla_turnos">Ver tabla</button>
            </div>
          </div>
        </div>
      </div>
    </div>



    <hr>

    <div class="modal modal-xl fade modal-data-bs-toogle h-100 d-flex flex-column justify-content-center" id="tabla_turnos" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="overflow-y: scroll;">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-3" style="color: #3b9dfb;" id="tabla_turnos">Tabla turnos</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form name="formulario2" method="POST" action="../../controller/paciente/añadir_horario.php">
              <div class="form-group">
                <select class="form-control" id="mesesid" name="id" onchange="tabla_turnos()">
                  <option value=" ">Seleccione el mes</option>
                  <?PHP
                  include_once("../../model/conexion.php");
                  $model = $bd->query("SELECT * FROM mes");
                  $modelo = $model->fetchAll(PDO::FETCH_OBJ);
                  foreach ($modelo as $datos_mes) {
                  ?>
                    <option value="<?php echo $datos_mes->id_mes ?>"><?php echo $datos_mes->mes ?></option>");
                  <?php
                  }
                  ?>
                </select>

              </div>
            </form>
            <hr>
            <div id="tabla_trn">
            </div>

            <hr>




          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" onclick="modal_tabla()" data-bs-toggle="modal" data-bs-target="#exampleModal">Cerrar</button>
            <button type="button" class="btn text-white" style='background-color: #50b4fb;'>Listo</button>
          </div>
        </div>
      </div>
    </div>



  </div>
  </div>
  </div>
  </div>
  </div>
  </main>
  </div>
  </div>

              <script src="../../main.js"></script>
              <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
              <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
              <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
              <script>
              $(document).ready(function () {
                  $('#example').DataTable();
              });
              </script>



  <script type="text/javascript">
  
    $('#mesesid').prop('disabled', 'disabled');
    

    document.getElementById('exampleModal').setAttribute('data-bs-backdrop', "static");
    document.getElementById('exampleModal').setAttribute('data-bs-keyboard', "false");


    document.getElementById('tabla_turnos').setAttribute('data-bs-backdrop', "static");
    document.getElementById('tabla_turnos').setAttribute('data-bs-keyboard', "false");


    document.getElementById('exampleModal').addEventListener('hidden.bs.modal', function(event) {
      document.getElementById('exampleModal').style.zIndex = -1;
    })

    document.getElementById('tabla_turnos').addEventListener('hidden.bs.modal', function(event) {
      document.getElementById('tabla_turnos').style.zIndex = -1;
      
      $('#tabla_trn').html(' ');
    })


    function cerrar() {

      document.getElementById('exampleModal').style.zIndex = -1;
      document.getElementById('tabla_turnos').style.zIndex = -1;

    }

    function modal() {


      $('#mesesid').prop('disabled', false);
      $('#exampleModal').modal('hide');
      document.getElementById('tabla_turnos').style.zIndex = 100000;
      document.getElementById('exampleModal').style.zIndex = -1;

    }

    function subir() {
      document.getElementById('exampleModal').style.zIndex = 100000;
    }

    function modal_tabla() {

      $('#tabla_turnos').modal('hide');
      document.formulario2.mesesid.options[0].selected = true;
      $('#tabla_trn').html(' ');
      document.getElementById('tabla_turnos').style.zIndex = -1;
      document.getElementById('exampleModal').style.zIndex = 100000;

    }

    function cambia() {
      var cosa;
      cosa = document.formulario1.cosa[document.formulario1.cosa.selectedIndex].value;
      id = cosa.split(",");

      $.ajax({
        type: "POST",
        url: "../../controller/gestion/lista_aux.php",
        data: "horas=" + id[0] + "," + id[1],
        success: function(r) {
          $('#lista_aux').html(r);
        }
      })
    }

    function tabla() {

      var cosa;
      cosa = document.formulario1.cosa[document.formulario1.cosa.selectedIndex].value;


      id = cosa.split(",");

      $.ajax({
        type: "POST",
        url: "../../controller/gestion/tabla_aux.php",
        data: "id=" + id[1],
        success: function(r) {
          $('#tabla_aux').html(r);
        }
      })

    }

    function tabla_turnos() {

      var cosa;
      cosa = document.formulario1.cosa[document.formulario1.cosa.selectedIndex].value;
      id_mes = document.formulario2.id[document.formulario2.id.selectedIndex].value;

      id = cosa.split(",");


      $.ajax({
        type: "POST",
        url: "../../controller/gestion/tabla_turnos.php",
        data: "id=" + id[1] + "," + id_mes,
        success: function(r) {
          $('#tabla_trn').html(r);
        }
      })




    }
  </script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
  <script>
  $(document).ready(function () {
      $('#example').DataTable();
  });
  </script>




  <script src="../../../assets/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
  <script src="dashboard.js"></script>
</body>

</html>