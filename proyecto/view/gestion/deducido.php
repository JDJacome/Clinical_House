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
              <a class="nav-link" href="poliza.php">
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
              <a class="nav-link active" href="deducido.php">
                <span data-feather="file-text" class="align-text-bottom"></span>
                Deducido
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="color: #50b4fb; font-weight: bolder;">Gestionar Deducido</h1>
          <div class="btn-toolbar mb-2 mb-md-0">

            <div>
              <div>
                <a href="registrar_paciente.php"><button class="btn text-white fs-5" style="background-color: #50b4fb;">Añadir paciente</button></a>
              </div>
            </div>
          </div>
        </div>

        <div class="container">
          <div class="col mg-5 justify-content-center" style="align-items: center;">
            <div class="row row-cols-1 row-cols-md-2 g-4 justify-content-center">
              <div class="col">
                <div class="card">
                  <div class="card-body">
                    <form class="p-4" method="POST" action="../../controller/gestion/deducido.php">

                      <?php
                      include('../../model/conexion.php');
                      $sql = $bd->query('SELECT * FROM deducido');
                      $rsql = $sql->fetchall(PDO::FETCH_OBJ);

                      foreach ($rsql as $datos) {
                      ?>
                        <div class="mg-3">
                          <label class="form-label fs-4">Salud</label>
                          <input type="number" class="form-control" name="Salud" value="<?php echo $datos->Salud ?>" autofocus required>
                        </div>

                        <div class="mg-3">
                          <label class="form-label fs-4">Pensión</label>
                          <input type="number" class="form-control" name="Pensión" value="<?php echo $datos->Pensión ?>" autofocus required>
                        </div>

                      <?php

                      }

                      ?>
                      <hr>

                      <div class="form-footer">
                        <div class="d-grid">
                          <input type="hidden" name="submit" value="1">
                          <input type="submit" class="btn text-white fs-4" style="background-color: #3b9dfb;" value="Registrar">
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>

            </div>
          </div>
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