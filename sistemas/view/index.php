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
    <link rel="stylesheet" href="../../proyecto/estilos.css">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
        
    #exampleModal {

z-index: -1;

}

        body {
            font-family: 'Poppins', sans-serif;
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
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-4" href="#" style="background-color: #bddffa;">Gestion IPSCH</a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search"
            aria-label="Search">
        <div class="navbar-nav">
            <div class="nav-item text-nowrap">
                <a class="nav-link px-3" href="../../index.html">Sign out</a>
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
                                <img src="../assets/home.png" style="width: 30px;" class="list__img">
                                <a href="inicio.php" class="nav__link">Equipos</a>
                            </div>
                        </li>

                        </li>


                    </ul>

                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2" style="color: #9bd4fd; font-weight: bolder;">Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div>
                            <div>
                              <a href="registrar_equipo.php"><button class="btn text-white" style="background-color: #50b4fb;">Añadir equipo</button></a>
                            </div>
                          </div>
                    </div>
                </div>

                <div class="container">
                    <div class="table-responsive">
                        <table class="table" id="example">
                            <thead>
                              <tr>
                                <th class="text-center" style="color: #50b4fb;">Tipo de equipo</th>
                                <th class="text-center" style="color: #50b4fb;">Nombre del equipo</th>
                                <th class="text-center" style="color: #50b4fb;">Imagen</th>
                                <th class="text-center" style="color: #50b4fb;">Descripción</th>
                                <th class="text-center" style="color: #50b4fb;">Modelo</th>
                                <th class="text-center" style="color: #50b4fb;">Marca</th>
                                <th class="text-center" style="color: #50b4fb;">Fabricante</th>
                                <th class="text-center" style="color: #50b4fb;">Número de serie</th>
                                <th class="text-center" style="color: #50b4fb;">Número de inventario</th>
                                <th class="text-center" style="color: #50b4fb;">Código de equipo</th>
                                <th class="text-center" style="color: #50b4fb;">Aéra</th>
                                <th class="text-center" style="color: #50b4fb;">Contacto</th>
                                <th class="text-center" style="color: #50b4fb;">Responsable</th>
                                <th class="text-center" style="color: #50b4fb;">Fecha de Entrega</th>
                                <th class="text-center" style="color: #50b4fb;">Fecha devuelto</th> 
                              </tr>
                            </thead>
                            <tbody>
                              <?php
                              include_once("../model/conexion.php");
                              $sql = $bd->query("SELECT * FROM equipos");
                              $rsql = $sql->fetchall(PDO::FETCH_OBJ);
                              foreach ($rsql as $datos) {
                              ?>
                                <tr>
                                  <th class="text-center"><?php echo $datos->Tipo_equipo ?></th>
                                  <th class="text-center"><?php echo $datos->Nombre_equipo ?></th>
                                  <th class="text-center"><img src="data:image/jpg;base64,<?php echo base64_encode($datos->Imagen)?>" width="100px"></th>
                                  <th class="text-center"><?php echo $datos->Descripción ?></th>
                                  <th class="text-center"><?php echo $datos->Modelo?></th>
                                  <th class="text-center"><?php echo $datos->Marca ?></th>
                                  <th class="text-center"><?php echo $datos->Fabricante ?></th>
                                  <th class="text-center"><?php echo $datos->Número_serie ?></th>
                                  <th class="text-center"><?php echo $datos->Número_inventario ?></th>
                                  <th class="text-center"><?php echo $datos->Código_equipo ?></th>
                                  <th class="text-center"><?php echo $datos->Área ?></th>
                                  <th class="text-center"><?php echo $datos->Contacto ?></th>
                                  <th class="text-center"><?php echo $datos->Responsable ?></th>
                                  <th class="text-center"><input type="text" class="form-control" name="entrega<?php echo $i ?>" autofocus value="<?php echo $datos->Tipo_equipo ?>"></th>
                                  <th class="text-center"><?php echo $datos->Fecha_devuelto ?></th>
                                </tr>
                              <?php
                              }
                              ?>
                            </tbody>
                          </table>

                    </div>
                </div>
          
                <script src="../../proyecto/main.js"></script>
                <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
                <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
                <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
                <script>
                    $(document).ready(function () {
                        $('#example').DataTable();
                    });
                </script>


            </main>
        </div>
    </div>
    
    
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
        integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
        crossorigin="anonymous"></script>
    <script src="dashboard.js"></script>
</body>

</html>