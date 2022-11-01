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


    .modal {
      position: fixed;
      right: 100px;
      width: 100%;
      height: 100%;
      outline: 0;
    }
  </style>


  <!-- Custom styles for this template -->
  <link href="dashboard.css" rel="stylesheet">
</head>

<body>

  <header class="navbar navbar-light sticky-top flex-md-nowrap p-0 shadow" style="background-color: #e3f2fd;">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#" style="background-color: #bddffa;">Gestion IPSCH</a>
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
      <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
        <div class="position-sticky pt-3 sidebar-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="../../inicio.php">
                <span data-feather="home" class="align-text-bottom"></span>
                Inicio
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../auxiliares/auxiliares.php">
                <span data-feather="file" class="align-text-bottom"></span>
                Auxiliares
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../pacientes/pacientes.php">
                <i class="bi bi-person-circle"></i>
                Pacientes
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <span class="bi bi-clipboard2-data"></span>
                Contabilidad
              </a>
            </li>
            <!--
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
              Reports
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers" class="align-text-bottom"></span>
              Integrations
            </a>
          </li> -->
          </ul>

          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
            <span>Saved reports</span>
            <a class="link-secondary" href="#" aria-label="Add a new report">
              <span data-feather="plus-circle" class="align-text-bottom"></span>
            </a>
          </h6>
          <ul class="nav flex-column mb-2">
            <li class="nav-item">
              <a class="nav-link" href="meses.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Meses
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="poliza.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Poliza
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="horas.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Horas
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="deducido.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Deducido
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="color: #50b4fb; font-weight: bolder;">Liquidación Nómina</h1>
          <div class="btn-toolbar mb-2 mb-md-0">


          </div>
        </div>

        <div class="container">
          <form class="p-4" method="POST" action="../../controller/gestion/poliza.php">
            <div class="table-responsive" id="tabla_responsiva">
              <table class="table table-light" style="width: 2200px;">

                <thead>
                  <tr>
                    <th class="text-center" style="width: 700px; color: #50b4fb;" scope="col">Nombre</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Identificación</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Salario Básico</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Auxilio de Transporte</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Horas Laboradas al mes</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Dias Laborados</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Sueldo mes</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">N° horas Extras</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Horas Extras</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Recargo Nocturno</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Recargo Dominical</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Recargo Dominical Nocturno</th>
                    <th class="text-center" style="width: 200px; color: #50b4fb;" scope="col">Total Devengado</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Salud</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Pensión</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Poliza Fepazde</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Bonificación PTE VM</th>
                    <th class="text-center" style="width: 150px; color: #50b4fb;" scope="col">Total Deducido</th>
                    <th class="text-center" style="width: 220px; color: #50b4fb;" scope="col">Neto a Pagar</th>
                  </tr>
                </thead>

                <body>

                  <?php
                  include("../../model/conexion.php");

                  $sql = $bd->query("SELECT * FROM auxiliar");
                  $rsql = $sql->fetchall(PDO::FETCH_OBJ);

                  foreach ($rsql as $datos) {
                    $GLOBALS['salario'] = $datos->Salario_básico;
                  ?>
                    <tr>
                      <td><input type="text" class="form-control" name="nombre<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Nombre . " " . $datos->Apellido ?>"></td>
                      <td><input type="text" class="form-control" name="cedula<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Cédula ?>"></td>
                      <td><input type="text" class="form-control" name="salario<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Salario_básico ?>"></td>
                      <td><input type="text" class="form-control" name="transporte<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Auxilio_transporte ?>"></td>

                      <?php
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
                      $contador_horas = 0;
                      $contador_dias = 0;
                      $sql2 = $bd->query("SELECT * FROM asignación where id_auxiliar = $datos->Cédula AND turno NOT in(' ')");
                      $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);

                      foreach ($rsql2 as $datos2) {

                        $number = $datos2->dia;
                        $turno = strtoupper($datos2->turno);

                        $formato = $bd->query("SELECT * FROM horas");
                        $r_formato = $formato->fetchall(PDO::FETCH_OBJ);

                        foreach ($r_formato as $dato_f) {

                          if ($dato_f->Formato == $turno) {

                            $sql3 = $bd->query("SELECT * FROM dias where número = $number AND id_mes = 1");
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

                            $contador = $contador + $dato_f->Horas;
                          }
                        }
                        $contador_dias = count($rsql2);
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

                      ?>
                      <td><input type="text" class="form-control" name="n°horas<?php echo $datos->Cédula ?>" autofocus value="<?php echo $contador_horas ?>"></td>
                      <td><input type="text" class="form-control" name="d_trabajo<?php echo $datos->Cédula ?>" autofocus value="<?php echo $contador_dias ?>"></td>
                      <td><input type="text" class="form-control" name="sueldo_mes<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Salario_básico + $datos->Auxilio_transporte ?>"></td>
                      <td><input type="text" class="form-control" name="horas_extra<?php echo $datos->Cédula ?>" autofocus value="<?php echo $extras ?>"></td>
                      <td><input type="text" class="form-control" name="horas_extra<?php echo $datos->Cédula ?>" autofocus value="<?php echo $horas_extras ?>"></td>
                      <td><input type="text" class="form-control" name="t_nocturno<?php echo $datos->Cédula ?>" autofocus value="<?php echo $total_nocturno ?>"></td>
                      <td><input type="text" class="form-control" name="t_dominical<?php echo $datos->Cédula ?>" autofocus value="<?php echo $total_dominical ?>"></td>
                      <td><input type="text" class="form-control" name="t_n_dominical<?php echo $datos->Cédula ?>" autofocus value="<?php echo $total_nocturno_dominical ?>"></td>
                      <td><input type="text" class="form-control" name="devengado<?php echo $datos->Cédula ?>" autofocus value="<?php echo $total_nocturno_dominical + $total_dominical + $total_nocturno + $horas_extras + ($datos->Salario_básico + $datos->Auxilio_transporte) ?>"></td>

                      <?php
                      $datos4 = $bd->query("SELECT * FROM deducido");
                      $rsql4 = $datos4->fetchall(PDO::FETCH_OBJ);
                      foreach ($rsql4 as $datos4) {
                      ?>
                        <td><input type="text" class="form-control" name="salud<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos4->Salud ?>"></td>
                        <td><input type="text" class="form-control" name="pension<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos4->Pensión ?>"></td>

                      <?php
                      }
                      ?>
                      <td><input type="text" class="form-control" name="poliza<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Poliza_Fepazde ?>"></td>
                      <td><input type="text" class="form-control" name="bonificacion<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos->Bonificación_PTEVM ?>"></td>
                      <td><input type="text" class="form-control" name="deducido<?php echo $datos->Cédula ?>" autofocus value="<?php echo $datos4->Salud + $datos4->Pensión ?>"></td>
                      <td><input type="text" class="form-control" name="neto<?php echo $datos->Cédula ?>" autofocus value="<?php echo ($total_nocturno_dominical + $total_dominical + $total_nocturno + $horas_extras + ($datos->Salario_básico + $datos->Auxilio_transporte)) - $datos->Poliza_Fepazde - $datos->Bonificación_PTEVM - $datos4->Salud - $datos4->Pensión ?>"></td>
                      <?php

                      ?>
                    </tr>


                  <?php

                  }
                  ?>

                </body>
              </table>
            </div>



            <div class="form-footer">
              <div class="d-grid">
                <input type="hidden" name="submit" value="1">
                <input type="submit" class="btn text-white fs-4" style="background-color: #3b9dfb;" value="Registrar">
              </div>
            </div>
          </form>
        </div>


      </main>
    </div>
  </div>

  <script src="../../../assets/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
  <script src="dashboard.js"></script>
</body>

</html>