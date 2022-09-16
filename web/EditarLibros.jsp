<%-- 
    Document   : EditarLibros
    Created on : 14-sep-2022, 0:53:18
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
                                    <div class="card-body">
                                        <h2 class="card-text ">"Hay dos tipos de libros. Aquellos que nadie lee, y los que nadie debería leer".</h2>
                                        <h5 class="card-title text-end ">H. L. MENCKEN</h5>
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

            <div class="list-group border border-primary border-2">
                        <a href="Inicio.jsp" class="list-group-item list-group-item-action">Inicio</a>
                        <a href="ListadoUsuarios.jsp" class="list-group-item list-group-item-action">Usuarios</a>
                        <a href="ListadoLibros.jsp" class="list-group-item list-group-item-action">Libros</a>
                        <a href="ListadoPrestamos.jsp" class="list-group-item list-group-item-action">Prestamos</a>
                        <a href="ListadoDevoluciones.jsp" class="list-group-item list-group-item-action">Devoluciones</a>
                    </div>
                        </div>

                        <div class="col-sm-10">
                            <div class="card">
                                <div class="card-body border border-primary border-2">
                                    <div class="col-sm-12 ">
                                        <div class="card ">
                                            <div class="card-body ">
                                                <form action="EditarLibro" method="post" class="row g-3">

                                                    <div class="m-3 row justify-content-evenly">
                                                        <div class="col-4">
                                                            <div class="h5" >Datos del libro</div>
                                                        </div>
                                                        <div class="col-4">
                                                            <label for="inputti" class=" col-form-label">Id Libro:</label>
                                                            <input type="text" name="pkLibroId"  class="form-control" value="<%out.print(request.getAttribute("pkLibroId"));%>" onkeypress="return solonumeros(event)" readonly>
                                                        </div> 
                                                        <div class="col-4">
                                                            <label for="inputti" class=" col-form-label">Codigo:</label>
                                                            <input type="text" name="codigoM" class="form-control" value="<%out.print(request.getAttribute("codigoM"));%>">
                                                        </div> 
                                                    </div>

                                                    <div class="m-1 mt-3 row">
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Autor:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="autorM" class="form-control" value="<%out.print(request.getAttribute("autorM"));%>">
                                                        </div>
                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Titulo:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="tituloM" class="form-control" value="<%out.print(request.getAttribute("tituloM"));%>">
                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label for="inputti" class=" col-sm-2 col-form-label">ISBN:</label>
                                                                <div class="col-sm-6">
                                                                    <input type="text" name="registroISBNM" class="form-control" value="<%out.print(request.getAttribute("registroISBNM"));%>">
                                                                </div>
                                                                <div class="col-sm-4 ">
                                                                    <select name="incluyeCd" class="form-select">
                                                                        <option value="<%out.print(request.getAttribute("incluyeCd"));%>">  <%out.print(request.getAttribute("incluyeCd"));%></option>
                                                                        <option value="si">Si</option>
                                                                        <option value="no">No</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Edición:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="edicionM" class="form-control" value="<%out.print(request.getAttribute("edicionM"));%>">
                                                        </div>
                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Pais:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="paisM" class="form-control" value="<%out.print(request.getAttribute("paisM"));%>">
                                                        </div>
                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Ciudad:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="ciudadM" class="form-control" value="<%out.print(request.getAttribute("ciudadM"));%>">
                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Editorial:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="editorialM" class="form-control" value="<%out.print(request.getAttribute("editorialM"));%>">
                                                        </div>
                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Tipo:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="tipoM" class="form-control" value="<%out.print(request.getAttribute("tipoM"));%>">

                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Nro.de paginas:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="nroPaginasM" class="form-control" value="<%out.print(request.getAttribute("nroPaginasM"));%>">
                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Tiempo de vigencia:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="tiempoVigenciaM" class="form-control" value="<%out.print(request.getAttribute("tiempoVigenciaM"));%>">

                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label for="inputti" class=" col-sm-2 col-form-label">Nro.de ejemplares:</label>
                                                                <div class="col-sm-6">
                                                                    <input type="text" name="nroEjemplaresM"  class="form-control" value="<%out.print(request.getAttribute("nroEjemplaresM"));%>">
                                                                </div>
                                                                <div class="col-sm-4 ">
                                                                    <select name="estadoM" class="form-select">
                                                                        <option value="<%out.print(request.getAttribute("estadoM"));%>">  <%out.print(request.getAttribute("estadoM"));%></option>
                                                                        <option value="bueno">Bueno</option>
                                                                        <option value="malo">Malo</option>
                                                                        <option value="regular">Regular</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="m-1 row">
                                                        <label for="inputti" class="col-sm-2 col-form-label">Año de publicacion:</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" name="anioPublicacionM" class="form-control" value="<%out.print(request.getAttribute("anioPublicacionM"));%>">
                                                        </div>
                                                    </div>

                                                    <div class="m-1 row ">
                                                        <centrar>
                                                            <div class="input-group m-1 ">
                                                                <div class="col-6">
                                                                    <input class="botoncrud" type="submit" name="accion" value="Guardar"> 
                                                                </div>
                                                                <div class="col-6">
                                                                    <input class="botoncrud" type="submit" name="accion" value="Cancelar"> 
                                                                </div>
                                                            </div>
                                                        </centrar>

                                                    </div>
                                                </form> 
                                               
                                            </div

                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>

                    </div>

                </div> 
                        </div>

                    </div>

                </div> 
    </body>
</html>
