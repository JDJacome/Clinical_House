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

    body{
      font-family: 'Poppins', sans-serif;
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
                    <a href="auxiliares.php" class="nav__link">Auxiliares</a>
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
          <h1 class="h2" style="color: #50b4fb; font-weight: bolder;">Registrar Auxiliar</h1>
          <div class="btn-toolbar mb-2 mb-md-0">
          </div>
        </div>


        <div class="container">
          <div class="col mg-5 justify-content-center" style="align-items: center;">
            <!- Recibir el mensaje -->

              <!- Mensaje de cédula no válida-->
                <?php
                if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'falta') {
                ?>
                  <div class="alert alert-danger" role="alert">
                    Los ID del auxiliar deben ser mayores a 8 dígitos!
                  </div>
                <?php
                }
                ?>


                <!- Mensaje de formato de turno no válida-->
                  <?php
                  if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'formato') {
                  ?>
                    <div class="alert alert-danger" role="alert">
                      Debes elegir bien el formato!
                    </div>
                  <?php
                  }
                  ?>

                  <!- Mensaje de formato de turno e id no válida-->
                    <?php
                    if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'id_formato') {
                    ?>
                      <div class="alert alert-danger" role="alert">
                        La cédula es menor a 8 digitos y el formato está mal!
                      </div>
                    <?php
                    }
                    ?>


                    <!- Mensaje de formato de horas no valida-->
                      <?php
                      if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'horas') {
                      ?>
                        <div class="alert alert-danger" role="alert">
                          Las horas está mal!
                        </div>
                      <?php
                      }
                      ?>

                      <!- Mensaje de formato de horas y id no valida-->
                        <?php
                        if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'id_horas') {
                        ?>
                          <div class="alert alert-danger" role="alert">
                            La cédula es menor a 8 dígitos y las horas está mal!
                          </div>
                        <?php
                        }
                        ?>

                        <!- Mensaje de formato de turno y horas no valida-->
                          <?php
                          if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'horas_formato') {
                          ?>
                            <div class="alert alert-danger" role="alert">
                              El formato y las horas está mal!
                            </div>
                          <?php
                          }
                          ?>

                          <!- Mensaje de formato de id, turno y horas no valida-->
                            <?php
                            if (isset($_GET['mensaje']) and $_GET['mensaje'] == 'id_formato_horas') {
                            ?>
                              <div class="alert alert-danger" role="alert">
                                La cédula es menor a 8 dígitos, el formato y las horas está mal!
                              </div>
                            <?php
                            }
                            ?>



                            <!- Fin alertas-->

                              <div class="row row-cols-1 row-cols-md-2 g-4 justify-content-center">
                                <div class="col">
                                  <div class="card">
                                    <div class="card-body">
                                      <form class="p-4" method="POST" name="formulario1" action="../../controller/auxiliar/registrar_auxiliar.php">
                                        <div class="mg-3">
                                          <label class="form-label fs-4">ID</label>
                                          <input type="number" class="form-control" name="id" autofocus required>
                                        </div>
                                        <div class="mg-3">
                                          <label class="form-label fs-4">Nombre Completo</label>
                                          <input type="text" class="form-control" name="nombre" autofocus required>
                                        </div>

                                        <div class="mg-3  fs-4">
                                          <label class="form-label">Teléfono</label>
                                          <input type="text" class="form-control" name="telefono" autofocus required>
                                        </div>


                                        <div class="mg-3">
                                          <label class="form-label fs-4">Seleccione el formato de turno</label>

                                          <select class="form-control" name="cosa" onchange="cambia()">
                                            <option value="0">Seleccione
                                            </option>
                                            <option value="1">6 horas
                                            </option>
                                            <option value="2">8 horas
                                            </option>
                                            <option value="3">12 horas
                                            </option>
                                          </select>

                                          <p>

                                          </p>

                                          <select class="form-control" name="opt">
                                            <option value="-">-</option>
                                            <option value="C">C</option>
                                            <option value="N">N</option>
                                            <option value="X">X</option>
                                          </select>
                                        </div>


                                        <p></p>

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

                              <!-- COMIENZO SCRIPT -->

                              <script type="text/javascript">
                                //1) Definir Las Variables Correspondintes
                                var opt_1 = new Array("-", "M", "T", "X");
                                var opt_2 = new Array("-", "8H", "X");
                                var opt_3 = new Array("-", "C", "N", "X");
                                // 2) crear una funcion que permita ejecutar el cambio dinamico

                                function cambia() {
                                  var cosa;
                                  //Se toma el vamor de la "cosa seleccionada"
                                  cosa = document.formulario1.cosa[document.formulario1.cosa.selectedIndex].value;
                                  //se chequea si la "cosa" esta definida
                                  if (cosa != 0) {
                                    //selecionamos las cosas Correctas
                                    mis_opts = eval("opt_" + cosa);
                                    //se calcula el numero de cosas
                                    num_opts = mis_opts.length;
                                    //marco el numero de opt en el select
                                    document.formulario1.opt.length = num_opts;
                                    //para cada opt del array, la pongo en el select
                                    for (i = 0; i < num_opts; i++) {
                                      document.formulario1.opt.options[i].value = mis_opts[i];
                                      document.formulario1.opt.options[i].text = mis_opts[i];
                                    }
                                  } else {
                                    //si no habia ninguna opt seleccionada, elimino las cosas del select
                                    document.formulario1.opt.length = 1;
                                    //ponemos un guion en la unica opt que he dejado
                                    document.formulario1.opt.options[0].value = "-";
                                    document.formulario1.opt.options[0].text = "-";
                                  }
                                  //hacer un reset de las opts
                                  document.formulario1.opt.options[0].selected = true;

                                }
                              </script>
        
                              <!-- FIN SCRIPT -->

      </main>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
  <script>
  $(document).ready(function () {
      $('#example').DataTable();
  });
  </script>
  <script src="../../main.js"></script>
  <script src="../../../assets/dist/js/bootstrap.bundle.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
  <script src="dashboard.js"></script>
</body>

</html>