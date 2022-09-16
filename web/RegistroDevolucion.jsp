<%-- 
    Document   : RegistroDevolucion
    Created on : 14-sep-2022, 6:51:39
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
                                                <img src="img/41qYsZt6ZIS.SX355_BO1,204,203,200.jpg" class="d-block w-100" alt="..."/>
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
                                <div class="card-body border border-primary border-2 ">

                                    <form action="GuardarDevolucion" method="post" class="row g-3"> 
                                         <div class="m-3 row justify-content-evenly">
                                        <div class="col-6 ">
                                                <div class="h4" >REGISTRAR DEVOLUCIÓN</div>
                                            </div>
                                             </div>
                                             
                                             <div class="col-md-4">
                                                 <label class="form-label">Id Préstamo</label>
                                                 <input type="text" name="pk_prestamosId"value="<%out.print(request.getAttribute("pk_prestamosId"));%>" class="form-control" readonly>
                                             </div>
                                             <div class="col-md-4">
                                                 <label class="form-label">Fecha Préstamo</label>
                                                 <input type="date" name="fechaPrestamo"value="<%out.print(request.getAttribute("fechaPrestamo"));%>" class="form-control" readonly>
                                             </div>
                                             <div class="col-md-4">
                                                 <label class="form-label">Fecha Devolución</label>
                                                 <input type="date" name="fechaDevolucion" class="form-control">
                                             </div>
                                                  
                                            
                                        <div class="m-3 row justify-content-evenly">
                                            <div class="col-4">
                                                <div class="h5" >Datos del Usuario</div>
                                            </div>

                                            <div class="col-4">
                                                <label  class=" col-form-label">Id Usuario:</label>
                                                <input type="text" name="pkUsuarioId" value="<%out.print(request.getAttribute("pkUsuarioId"));%>" class="form-control" onkeypress="return solonumeros(event)" readonly>

                                            </div> 

                                            <div class="col-4">
                                                <label  class=" col-form-label">Cedula:</label>
                                                <input type="text" name="cedulaU" value="<%out.print(request.getAttribute("cedulaU"));%>" class="form-control" onkeypress="return solonumeros(event)" readonly>

                                            </div> 
                                        </div>

                                        <div class="m-1 mt-3 row">
                                            <label  class=" col-sm-2 col-form-label">Nombres:</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="nombresU" value="<%out.print(request.getAttribute("nombresU"));%>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="m-1 row">
                                            <label  class=" col-sm-2 col-form-label">Apellidos:</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="apellidosU" value="<%out.print(request.getAttribute("apellidosU"));%>" class="form-control" readonly>
                                            </div>
                                        </div>

                                        <div class="m-1 row">
                                            <div class="col">

                                                <div class="input-group m-1 ">
                                                    <label  class=" col-sm-2 col-form-label">Correo:</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" name="correoU" value="<%out.print(request.getAttribute("correoU"));%>" class="form-control" readonly>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="m-1 row">
                                            <div class="col">

                                                <div class="input-group m-1 ">
                                                    <label class="form-label col-sm-2 col-form-label">Carrera</label>
                                                    <input type="text" name="carreraId" value="<%out.print(request.getAttribute("carreraId"));%>" class="form-control" readonly>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="m-1 row">
                                            <div class="col">

                                                <div class="input-group m-1 ">
                                                    <label class="form-label col-sm-2 col-form-label">Nivel académico</label>
                                                    <input type="text" name="nivelAcademico" value="<%out.print(request.getAttribute("nivelAcademicoId"));%>" class="form-control" readonly>


                                                </div>
                                            </div>

                                        </div>
                                        <div class="m-1 row">
                                            <div class="col">

                                                <div class="input-group m-1 ">
                                                    <label class="form-label col-sm-2 col-form-label">Formación académica</label>
                                                    <input type="text" name="formacionAcademica" value="<%out.print(request.getAttribute("formacionAcademicaId"));%>" class="form-control" readonly>


                                                </div>
                                            </div>

                                        </div>

                                        <div class="m-3 row justify-content-evenly">
                                            <div class="col-4">
                                                <div class="h5" >Datos del libro</div>
                                            </div>
                                            
                                            <div class="col-4">
                                                <label for="inputti" class=" col-form-label">Id Libro:</label>
                                                <input type="text" name="pkLibroId" value="<%out.print(request.getAttribute("pkLibroId"));%>" class="form-control" readonly>
                                            </div> 
                                            <div class="col-4">
                                                <label for="inputti" class=" col-form-label">Codigo:</label>
                                                <input type="text" name="codigoM" value="<%out.print(request.getAttribute("codigoM"));%>" class="form-control" readonly>
                                            </div> 
                                        </div>

                                        <div class="m-1 mt-3 row">
                                            <label for="inputti" class=" col-sm-2 col-form-label">Autor:</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="autorM" value="<%out.print(request.getAttribute("autorM"));%>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="m-1 row">
                                            <label for="inputti" class=" col-sm-2 col-form-label">Titulo:</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="tituloM" value="<%out.print(request.getAttribute("tituloM"));%>" class="form-control" readonly>
                                            </div>
                                        </div>

                                        <div class="m-1 row">
                                            <label for="inputti" class=" col-sm-2 col-form-label">ISBN:</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="registroISBNM" value="<%out.print(request.getAttribute("registroISBNM"));%>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="m-1 row">
                                            <label for="inputti" class=" col-sm-2 col-form-label">Incluye CD</label>
                                            <div class="col-sm-10">

                                                <input type="text" name="nroEjemplaresM" value="<%out.print(request.getAttribute("incluyeCd"));%>" class="form-control" readonly>
                                            </div>
                                            </div>
                                            <div class="m-1 row">
                                                <label for="inputti" class=" col-sm-2 col-form-label">Edición:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="edicionM" value="<%out.print(request.getAttribute("edicionM"));%>" class="form-control" readonly>
                                                </div>
                                            </div>
                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Pais:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="paisM" value="<%out.print(request.getAttribute("paisM"));%>" class="form-control" readonly>
                                                </div>
                                            </div>
                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Ciudad:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="ciudadM" value="<%out.print(request.getAttribute("ciudadM"));%>" class="form-control" readonly>
                                                </div>
                                            </div>

                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Editorial:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="editorialM" value="<%out.print(request.getAttribute("editorialM"));%>" class="form-control" readonly>
                                                </div>
                                            </div>
                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Tipo:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="tipoM"  value="<%out.print(request.getAttribute("tipoM"));%>" class="form-control" readonly>

                                                </div>
                                            </div>
                                                    <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Estado</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="nroPaginasM" value="<%out.print(request.getAttribute("estadoM"));%>" class="form-control" readonly>
                 </div>
                                            </div>

                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Nro.de paginas:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="nroPaginasM" value="<%out.print(request.getAttribute("nroPaginasM"));%>" class="form-control" readonly>
                                                </div>
                                            </div>

                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Tiempo de vigencia:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="tiempoVigenciaM" value="<%out.print(request.getAttribute("tiempoVigenciaM"));%>" class="form-control" readonly>

                                                </div>
                                            </div>

                                            <div class="m-1 row">
                                                
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Nro.de ejemplares:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="nroEjemplaresM" value="<%out.print(request.getAttribute("nroEjemplaresM"));%>" class="form-control" readonly>
                                                        </div>
                                                        
                                                    </div>
                                               
                                            <div class="m-1 row">
                                                <label for="inputti" class="col-sm-2 col-form-label">Año de publicacion:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="anioPublicacionM" value="<%out.print(request.getAttribute("anioPublicacionM"));%>" class="form-control" readonly>
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
                                </div>

                            </div>

                            

                        </div>
                    </div>
        </div> 
        </div>

        </div>
    </body>
</html>
