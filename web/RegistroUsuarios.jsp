<%-- 
    Document   : RegistroUsuarios
    Created on : 14-sep-2022, 12:14:44
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
                                    
                                    <form action="GuardarUsuario" method="post" class="row g-3"> 
                                        <center>
                                        <div class="col-6 ">
                                                <div class="h4" >REGISTRAR USUARIO</div>
                                            </div>
                                        </center>
                                                    <div class="m-2 row justify-content-evenly">
                                                        <div class="col-4">
                                                            <div class="h5" >Datos del usuario</div>
                                                        </div>

                                                        <div class="col-4">
                                                            <label for="inputti" class=" col-form-label">Cedula:</label>
                                                            <input type="text" name="cedulaU" class="form-control" onkeypress="return solonumeros(event)">  
                                                        </div> 
                                                    </div>

                                                    <div class="m-1 mt-3 row">
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Nombres:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="nombresU" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="m-1 row">
                                                        <label for="inputti" class=" col-sm-2 col-form-label">Apellidos:</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="apellidosU" class="form-control">
                                                        </div>
                                                    </div>

                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label for="inputti" class=" col-sm-2 col-form-label">Correo:</label>
                                                                <div class="col-sm-10">
                                                                    <input type="email" name="correoU" class="form-control">
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label class="form-label col-sm-2 col-form-label">Carrera:</label>
                                                                <div class="col-sm-10">
                                                                <select name="fk_carreraId" class="form-select">
                                                                    <option selected disabled value="">Elige...</option>
                                                                    <option value="1" >Tecnología Superior en Administración</option>
                                                                    <option value="2" >Tecnología en Desarrollo de software</option>
                                                                    <option value="3">Diseño Gráfico</option>
                                                                    <option value="4">N/A</option>
                                                                    </select>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    
                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label class="form-label col-sm-2 col-form-label">Nivel académico:</label>
                                                                <div class="col-sm-10">
                                                                <select name="fk_nivelAcademicoId" class="form-select">
                                                                    <option selected disabled value="">Elige...</option>
                                                                    <option value="1">Primero</option>
                                                                    <option value="2">Segundo</option>
                                                                    <option value="3">Tercero</option>
                                                                    <option value="4">Cuarto</option>
                                                                    <option value="5">Quinto</option>
                                                                    <option value="6">N/A</option>
                                                                </select>
                                                              </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="m-1 row">
                                                        <div class="col">

                                                            <div class="input-group m-1 ">
                                                                <label class="form-label col-sm-2 col-form-label">Formación académica:</label>
                                                               <div class="col-sm-10">
                                                                <select name="fk_formacionAcademicaId" class="form-select">
                                                                    <option selected disabled value="">Elige...</option>
                                                                    <option value="1">Estudiante</option>
                                                                    <option value="2">Docente</option>
                                                                    <option value="3">Usuario externo</option>
                                                                    <option value="4">Primaria</option>
                                                                    <option value="5">Secundaria</option>
                                                                    <option value="6">Superior</option>
                                                                    <option value="7">N/A</option>
                                                                </select>
                                                            </div>
                                                                </div>
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

        </div>
    </body>
</html>
