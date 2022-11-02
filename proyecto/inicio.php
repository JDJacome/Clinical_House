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



  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

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
  </style>


  <!-- Custom styles for this template -->
  <link href="dashboard.css" rel="stylesheet">
</head>

<body style="background-color: #fff;">

  <header class="navbar navbar-light sticky-top flex-md-nowrap p-0 shadow" style="background-color: #fff;">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#" style="background-color: #bddffa;">Gestion IPSCH</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
      <div class="nav-item text-nowrap">
        <a class="nav-link px-3" href="../index.html">Sign out</a>
      </div>
    </div>
  </header>

  <div class="container-fluid">
    <div class="row">
      <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
        <div class="position-sticky pt-3 sidebar-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="inicio.php">
                <span data-feather="home" class="align-text-bottom"></span>
                Inicio
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/auxiliares/auxiliares.php">
                <span data-feather="file" class="align-text-bottom"></span>
                Auxiliares
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/pacientes/pacientes.php">
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
            <li class="nav-item">
            <a class="nav-link" href="view/médico/medico.php">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
             Médicos
            </a>
          </li>
          </ul>

          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
            <span>Saved reports</span>
            <a class="link-secondary" href="#" aria-label="Add a new report">
              <span data-feather="plus-circle" class="align-text-bottom"></span>
            </a>
          </h6>
          <ul class="nav flex-column mb-2">
            <li class="nav-item">
              <a class="nav-link" href="view/gestion/meses.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Meses
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/gestion/poliza.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Poliza
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/gestion/horas.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Horas
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/gestion/deducido.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Deducido
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="color: #9bd4fd; font-weight: bolder;">Dashboard</h1>
          <div class="btn-toolbar mb-2 mb-md-0">

          </div>
        </div>
        
        <?php

        include("model/conexion.php");

        $mes = $bd->query("SELECT * FROM asignación");
        $rmes = $mes->fetchall(PDO::FETCH_OBJ);

        foreach ($rmes as $datos_mes) {
          $id_mes = $datos_mes->id_mes;
        }



        $sql = $bd->query("SELECT * FROM Paciente");
        $rsql = $sql->fetchall(PDO::FETCH_OBJ);

        foreach ($rsql as $datos) {
          $sql2 = $bd->query("SELECT * FROM asignación where id_paciente = $datos->Cédula AND id_mes = $id_mes");
          $rsql2 = $sql2->fetchall(PDO::FETCH_OBJ);
          $contador_paciente = count($rsql2);

          if ($contador_paciente > 0) {
          } else {

            $v_mes = $bd->query("SELECT * FROM mes WHERE id_mes = $id_mes");
            $r_vmes = $v_mes->fetchall(PDO::FETCH_OBJ);

            foreach ($r_vmes as $d_vmes) {
              echo "<div class='h5'>En el mes " . $d_vmes->mes . ", falta por asignar turnos a los pacientes: </div>";
              echo "<hr>";
            }


            $sql3 = $bd->query("SELECT * FROM Paciente WHERE Cédula = $datos->Cédula AND Horas > 0");
            $rsql3 = $sql3->fetchall(PDO::FETCH_OBJ);

            $contador_p = count($rsql3);

            if ($contador_p > 0) {
              $tabla = "
              <div class='container'>
               <div class='table-responsive' id='tabla_responsiva'>
                <table class='table'>
                  <thead  style='background-color: #dcedfb;'>
                    <tr>
                      <th scope='col'>Cédula</th>
                      <th scope='col'>Nombre</th>
                      <th scope='col'>Apellido</th>
                    </tr>
                  </thead>
                <tbody class='table-group-divider' style='background-color: #fff;'>";
                foreach ($rsql3 as $datos3) {
                  $tabla .= "
                    <tr>
                      <th scope='row'>$datos3->Cédula </th>
                      <td>$datos3->Nombre </td>
                      <td>$datos3->Apellido </td>
                    </tr>";
                }

              $tabla .= "
                </tbody>
                </table>
              </div>
            </div>";

              echo $tabla;
            }
          }
        }

        ?>

      </main>
    </div>
  </div>


  <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
  <script src="dashboard.js"></script>
</body>

</html>