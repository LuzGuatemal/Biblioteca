<%-- 
    Document   : Inicio
    Created on : 13-sep-2022, 17:07:31
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="vista/Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
        <div class="row justify-content-center mt-3 " >
        <div class="col-sm-10 border bg-ligt rounded-2">
            

            
                    <div class="card-body">
                    </div> 

                    <div class="row m-2">
                        <div class="card-group">

                            <div class="col-sm-10">
                                <div class="card m-3 ">
                                    <div class="card-body border border-primary border-2 ">
                                        <h2 class="card-text">"Hay dos tipos de libros. Aquellos que nadie lee, y los que nadie debería leer".</h2>
                                        <h5 class="card-title">H. L. MENCKEN</h5>
                                        <p class="card-text"><small class="text-muted">Última actualización hace 3 minutos</small></p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-2 border border-primary border-2 " >
                                <div class="card ">
                                     <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="img/la-chica-de-nieve.jpg" class="d-block w-100" alt="..."/>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/41qYsZt6ZIS._SX355_BO1,204,203,200_.jpg" class="d-block w-100" alt="..."/>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/Análisis-de-Rayuela-de-Julio-Cortázar.jpg" class="d-block w-100" alt="..."/>
                                    </div>
                                    
                                </div>
                            </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    <nav class="navbar navbar-expand-lg navbar-light bg-light rounded border border-primary border-2 ">
                        <div class="container-fluid">
                            <a class="navbar-brand " href="#">
                                <img src="img/book.gif" alt="" width="30" height="30" class="d-inline-block align-text-end ">

                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse position-absolute top-3 end-0 " id="navbarScroll">
                                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Mi Perfil</a>                     
                                        <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                            <li><a class="dropdown-item" href="index.jsp">Salir</a></li>
                                        </ul>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    
                    <div class="row m-2">
                        <div class="col-sm-2 " >

  
                    <div class="list-group border border-primary border-2 ">
                        <a href="Inicio.jsp" class="list-group-item list-group-item-action">Inicio</a>
                        <a href="ListadoUsuarios.jsp" class="list-group-item list-group-item-action">Usuarios</a>
                        <a href="ListadoLibros.jsp" class="list-group-item list-group-item-action">Libros</a>
                        <a href="ListadoPrestamos.jsp" class="list-group-item list-group-item-action">Prestamos</a>
                        <a href="ListadoDevoluciones.jsp" class="list-group-item list-group-item-action">Devoluciones</a>
                    </div>
                               </div>
                            
                        <div class="col-sm-10 " >
                            <div class="card">
                                <div class="card-body border border-primary border-2 ">
                                    
                                    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5" aria-label="Slide 6"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="6" aria-label="Slide 7"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content.jpg" class="d-block w-100  rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Introducción general de la administración
            - Los orígenes de la administración - Enfoque clásico de la administración
            - Enfoque humanista de la administración - Enfoque neoclásico de la administración 
            - Enfoque estructuralista de la administración - Enfoque del comportamiento en la administración 
             .</p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
    <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content1.jpg" class="d-block w-100 rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Aproximación a una definición de administración - Relaciones de la administración con otras ciencias - Importancia de la administración en los tiempos actuales - La administración como actividad humana y como profesión - Administración privada vs. Administración pública - Los conceptos de calidad y eficiencia -
            Tiempos prehistóricos - Tiempos antiguos - Características administrativas de la edad Media </p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
    
    
     <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/la-chica-de-nieve.jpg" class="d-block w-100" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Título de la tarjeta</h5>
        <p class="card-text">Esta es una tarjeta más amplia con texto de apoyo a continuación como introducción natural a contenido adicional. Este contenido es un poco más largo.</p>
        <p class="card-text"><small class="text-muted">Última actualización hace 3 minutos</small></p>
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
                                        
     <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content1.jpg" class="d-block w-100 rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Aproximación a una definición de administración - Relaciones de la administración con otras ciencias - Importancia de la administración en los tiempos actuales - La administración como actividad humana y como profesión - Administración privada vs. Administración pública - Los conceptos de calidad y eficiencia -
            Tiempos prehistóricos - Tiempos antiguos - Características administrativas de la edad Media </p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
                                        
      <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content1.jpg" class="d-block w-100 rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Aproximación a una definición de administración - Relaciones de la administración con otras ciencias - Importancia de la administración en los tiempos actuales - La administración como actividad humana y como profesión - Administración privada vs. Administración pública - Los conceptos de calidad y eficiencia -
            Tiempos prehistóricos - Tiempos antiguos - Características administrativas de la edad Media </p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
                                        
      <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content1.jpg" class="d-block w-100 rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Aproximación a una definición de administración - Relaciones de la administración con otras ciencias - Importancia de la administración en los tiempos actuales - La administración como actividad humana y como profesión - Administración privada vs. Administración pública - Los conceptos de calidad y eficiencia -
            Tiempos prehistóricos - Tiempos antiguos - Características administrativas de la edad Media </p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
         <div class="carousel-item" data-bs-interval="2000">
        <center>
        <div class="card " style="max-width: 580px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="img/content1.jpg" class="d-block w-100 rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Contenido</h5>
        <p class="card-text">Aproximación a una definición de administración - Relaciones de la administración con otras ciencias - Importancia de la administración en los tiempos actuales - La administración como actividad humana y como profesión - Administración privada vs. Administración pública - Los conceptos de calidad y eficiencia -
            Tiempos prehistóricos - Tiempos antiguos - Características administrativas de la edad Media </p>
        
      </div>
    </div>
  </div>
</div>
            </center>
       
    </div>
      </div>                                  
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Anterior</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Siguiente</span>
  </button>
</div>
                                    
                                </div>
                            </div>
                        </div> 
                        </div>
                             
                    </div>
           
    </body>
</html>
