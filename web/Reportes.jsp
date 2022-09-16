<%-- 
    Document   : Reportes
    Created on : 01/09/2022, 18:32:52
    Author     : User
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
                                    <div class="card-body">
                                        <h2 class="card-text">"Hay dos tipos de libros. Aquellos que nadie lee, y los que nadie debería leer".</h2>
                                        <h5 class="card-title">H. L. MENCKEN</h5>
                                        <p class="card-text"><small class="text-muted">Última actualización hace 3 minutos</small></p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-2">
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

                    <div class="row m-2">
                        <div class="col-12 mt-1 ">
                            <div class="card">
                                <div class="card-body">
                                </div> 

                                <nav class="navbar navbar-expand-sm navbar-light bg-light">
                                    <div class="container-fluid">
                                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        </button>
                                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                                <li class="nav-item">
                                                    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                                                </li>
                                                <select class="form-select form-select-sm mb-3" aria-label="Ejemplo de .form-select-lg">
                                                    <option selected>Todos </option>
                                                    <option value="1">Autor</option>
                                                    <option value="2">Titulo</option>
                                                    <option value="3">Materia</option>
                                                </select>
                                                <select class="form-select form-select-sm mb-3" aria-label="Ejemplo de .form-select-lg">
                                                    <option selected>Todos los campos</option>
                                                    <option value="1">Autor</option>
                                                    <option value="2">Titulo</option>
                                                    <option value="3">Materia</option>
                                                </select>

                                            </ul>
                                            <form class="d-flex" role="search">
                                                <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Buscar">
                                                <button class="btn btn-outline-success" type="submit">Buscar</button>
                                            </form>
                                        </div>
                                    </div>
                                </nav>

                            </div>
                        </div>
                    </div>

            
            
            
               
                    <div class="row m-2">
                        <div class="col-sm-2 " >

  
 <div class="list-group">
    <a href=".jsp" class="list-group-item list-group-item-action">Inicio</a>
    <a href="Libros.jsp" class="list-group-item list-group-item-action">Libros</a>
    <a href="Prestamos.jsp" class="list-group-item list-group-item-action">Prestamos</a>
    <a href="Reportes.jsp" class="list-group-item list-group-item-action">Reportes</a>
  </div>
                               </div>
                            
                        <div class="col-sm-10">
                            <div class="card">
                                <div class="card-body ">
                                    
                                    <form action="Servlet4" class="row g-3">
                                        
                                        <div class="h5" >Registro de reportes
                                        
                                        </div>
                                       <div class="m-1 row ">
                                                        <div class="col-12">
                                                            <button type="submit" class="btn btn-primary " >Guardar</button>
                                                        </div>

                                                    </div>
                                    </form>
                                    
                                </div>
                            </div>
                        </div> 
                        </div>
                             
                    </div>
            </div>
        
        
          </div>
    </body>
</html>
