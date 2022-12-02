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
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-white sidebar collapse">
                <div class="position-sticky pt-3 sidebar-sticky">
                    <ul class="nav flex-column">

                        <li class="py-3"></li>
                        <li class="list__item">
                            <div class="list__button">
                                <img src="../assets/home.png" style="width: 30px;" class="list__img">
                                <a href="index.php" class="nav__link">Equipos</a>
                            </div>
                        </li>

                        </li>


                    </ul>

                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2" style="color: #9bd4fd; font-weight: bolder;">Registrar equipo</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div>
                        </div>
                    </div>
                </div>

                <div class="row  g-5 justify-content-center">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <form class="row g-3" action="../controller/registrar_equipo.php" method="post" enctype="multipart/form-data">
                                    <div class="col-md-6"">
                                        <label for="tipo_equipo" class="form-label">Tipo de Equipo</label>
                                        <input type="text" class="form-control" id="tipo_equipo" name="t_equipo" placeholder="1234 Main St">
                                    </div>
                                    <div class="col-md-6"">
                                        <label for="descripción" class="form-label">Descripción</label>
                                        <textarea class="form-control" id="descripción" name="desc" rows="1"></textarea>
                                    </div>
                                    <hr>
                                    <div class="g-3"></div>
                                    <p class="card-text fs-4 text-center">Información de la Empresa</p>
                                    <div class="col-md-3">
                                        <label for="nombre_sede" class="form-label">Nombre de la sede</label>
                                        <input type="text" class="form-control" id="nombre_sede" name="n_sede">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="direccion" class="form-label">Dirección</label>
                                        <input type="text" class="form-control" id="direccion" name="direc">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="teléfono" class="form-label">Teléfono</label>
                                        <input type="text" class="form-control" id="teléfono" name="tel_empresa">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="mail" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="mail" name="email">
                                    </div>
                                    <hr>
                                    <div class="g-3"></div>
                                    <p class="card-text fs-4 text-center">Información del equipo</p>
                                    <div class="col-md-3">
                                        <label for="nombre_equipo" class="form-label">Nombre del equipo</label>
                                        <input type="text" class="form-control" id="nombre_equipo" name="n_equipo">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="modelo" class="form-label">Modelo</label>
                                        <input type="text" class="form-control" id="modelo" name="model">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="marca" class="form-label">Marca</label>
                                        <input type="text" class="form-control" id="marca" name="marc">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="fabricante" class="form-label">Fabricante</label>
                                        <input type="text" class="form-control" id="fabricante" name="fabric">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="numero_serie" class="form-label">Número de Serie</label>
                                        <input type="text" class="form-control" id="numero_Serie" name="n_serie">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="numero_inventario" class="form-label">Número de inventario</label>
                                        <input type="text" class="form-control" id="numero_inventario" name="n_inventario">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="fabricante" class="form-label">Código de equipo</label>
                                        <input type="text" class="form-control" id="c_equipo" name="c_equipo">
                                    </div>
                                    <div class="col-12">
                                        <div class="form-check">
                                        <label for="inputGroupFile04" class="form-label">Imagen</label>
                                            <input type="file" class="form-control" id="inputGroupFile04" name="imagen" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="g-3"></div>
                                    <p class="card-text fs-4 text-center">Ubicación</p>
                                    <div class="col-md-5">
                                        <label for="área" class="form-label">Área</label>
                                        <input type="text" class="form-control" id="área" name="area">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="contacto" class="form-label">Contacto</label>
                                        <input type="text" class="form-control" id="contacto" name="contac">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="responsable" class="form-label">Responsable</label>
                                        <input type="text" class="form-control" id="responsable" name="respon">
                                    </div>
                                    <hr>
                                    <div class="g-3"></div>
                                    <p class="card-text fs-4 text-center">Adicional</p>

                                    <div class="col-md-6">
                                        <label class="form-label">Método de Adquisición</label>
                                        <select class="form-select" aria-label="Default select example" name="adquisición">
                                            <option selected>Selecciona el método</option>
                                            <option value="Compra directa">Compra directa</option>
                                            <option value="Alquiler">Alquiler</option>
                                            <option value="Donación">Donación</option>
                                            <option value="Otro">otro</option>
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="mantenimiento" class="form-label">Frecuencia de Mantenimiento</label>
                                        <input type="text" class="form-control" id="mantenimiento" name="f_mantenimiento">
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





            </main>
        </div>
    </div>


    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="dashboard.js"></script>
</body>

</html>