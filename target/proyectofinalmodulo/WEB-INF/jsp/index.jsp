<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
            aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <ul class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/">Inicio</a>
            <ul class="navbar-nav mr-auto mb-2 mb-lg-0 justify-content-start">
                 <li class="nav-item">
                    <a class="nav-link" href="ListadoChequeos">Check</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="ListadoAsesoria">Asesor�a Especial</a>
                </li>
         
                <li class="nav-item">
                    <a class="nav-link" href="ListadoPago">Listado Pago</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="MostrarAccidente">Accidentes</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="ListadoMejoras">Mejoras</a>
                </li>
         
            </ul>

            <ul class="nav justify-content-end navbar-nav">
                <li class="nav-item dropdown dropleft">
                    <a class="fas fa-user nav-link" href="" id="navbarDropdownMenuLink" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="login">Iniciar Sesi�n</a>
                        <a class="dropdown-item" href="logout">Cerrar Sesi�n</a>
                    </div>
                </li>
            </ul>
    </div>

</nav>

<header>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://www.laequidadseguros.coop/equidadarl/images/sliderPrincipal/2019/banner_ciclos_2019.jpg" alt="First slide">
    </div>
  </div>
</div>
</header>

</br>

<div class="row" >

<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      				<a class="nav-link navbar-brand active" href="<%=request.getContextPath()%>/"><span class="fa fa-home"></span></a>
                    <a class="nav-link p-3 mb-2 bg-secondary text-white" href="ListadoClientes">Informaci�n Clientes</a>
                    <a class="nav-link p-3 mb-2 bg-secondary text-white" href="ListadoEmpleados">Informaci�n Empleado</a>
                    <a class="nav-link p-3 mb-2 bg-secondary text-white" href="ReporteGeneral">Reporte General</a>
                    <a class="nav-link p-3 mb-2 bg-secondary text-white" href="ListadoTasa">Tasa Accidentabilidad</a>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
            	
    </button>
  </nav>
</div>

</br>
</br>
            <div class="col-sm text-center">
                <img class="img-thumbnail"
                    src="http://www.haleco.es/wp-content/uploads/2014/07/PAC_STG14_24A-250x250.jpeg"><br>
                <a class="btn btn-dark btn-lg" href="FormularioAccidenteUsuario" role="button">Ingresar Accidente Usuario</a>
            </div>
            <div class="col-sm text-center">
                <img class="img-thumbnail"
                    src="http://www.haleco.es/wp-content/uploads/2014/07/PAC_STG10_20A-250x250.jpeg"><br>
                <a class="btn btn-dark btn-lg" href="MostrarAccidente" role="button">Gestionar Accidentes</a>
            </div>
        </div>
</br>
<footer class="py-5 bg-dark">
    <!-- Footer Elements -->
    <div class="container">

        <!-- Grid row-->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-12 py-5 text-center">
                <div class="mb-5 flex-center">

                    <!-- Facebook -->
                    <a class="fb-ic">
                        <i class="fab fa-facebook-f fa-lg  mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Twitter -->
                    <a class="tw-ic">
                        <i class="fab fa-twitter fa-lg  mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Google +-->
                    <a class="gplus-ic">
                        <i class="fab fa-google-plus-g fa-lg  mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Linkedin -->
                    <a class="li-ic">
                        <i class="fab fa-linkedin-in fa-lg  mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Instagram-->
                    <a class="ins-ic">
                        <i class="fab fa-instagram fa-lg mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Pinterest-->
                    <a class="pin-ic">
                        <i class="fab fa-pinterest fa-lg  fa-2x"> </i>
                    </a>
                </div>
            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row-->
        <p class="m-0 text-center text-white">Copyright &copy; Antiaccidente.com 2020</p>
    </div>
    <!-- /.container -->
</footer>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</html>