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
  <link rel="stylesheet" href="../../estilos.css">


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

    body {
      font-family: 'Poppins', sans-serif;
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
                <a href="../pacientes/pacientes.php" class="nav__link">Pacientes</a>
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
                  <a href="meses.php" class="nav__link nav__link--inside">Meses</a>
                </li>

                <li class="list__inside">
                  <a href="poliza.php" class="nav__link nav__link--inside">Poliza</a>
                </li>

                <li class="list__inside">
                  <a href="horas.php" class="nav__link nav__link--inside">Horas</a>
                </li>

                <li class="list__inside">
                  <a href="deducido.php" class="nav__link nav__link--inside">Deducido</a>
                </li>
              </ul>

            </li>
          </ul>
        </div>
      </nav>

      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="color: #50b4fb; font-weight: bolder;">Gestión horas</h1>
          <div class="btn-toolbar mb-2 mb-md-0">

            <div>
              <div>
                <a href="añadir_formato.php"><button class="btn text-white fs-5" style="background-color: #50b4fb;">Añadir formato</button></a>
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
                    <form class="p-4" method="POST" action="../../controller/gestion/horas.php">
                      <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">N°</th>
                            <th scope="col">Formato</th>
                            <th scope="col">Horas</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php
                          include("../../model/conexion.php");
                          $sql = $bd->query("SELECT * FROM horas ORDER BY Horas");
                          $rsql = $sql->fetchall(PDO::FETCH_OBJ);

                          foreach ($rsql as $datos) {
                          ?>

                            <tr>
                              <th scope="row"><input type="text" class="form-control" name="id<?php echo $datos->id ?>" value="<?php echo $datos->id ?>" autofocus required></th>
                              <td><input type="text" class="form-control" name="formato<?php echo $datos->id ?>" value="<?php echo $datos->Formato ?>" autofocus required></td>
                              <td><input type="text" class="form-control" name="horas<?php echo $datos->id ?>" value="<?php echo $datos->Horas ?>" autofocus required></td>
                            </tr>

                          <?php
                          }
                          ?>
                        </tbody>
                      </table>

                      <hr>

                      <div class="form-footer">
                        <div class="d-grid">
                          <input type="hidden" name="submit" value="1">
                          <input type="submit" class="btn text-white fs-4" style="background-color: #3b9dfb;" value="Modificar">
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
          $(document).ready(function() {
            $('#example').DataTable();
          });
        </script>
        <script src="../../main.js"></script>

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