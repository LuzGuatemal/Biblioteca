<%-- 
    Document   : ListadoDevoluciones
    Created on : 14-sep-2022, 6:47:51
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.User"%>
<%@page import="user.UserService"%>
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

  
                    <div class="list-group">
                        <a href="Inicio.jsp" class="list-group-item list-group-item-action">Inicio</a>
                        <a href="ListadoUsuarios.jsp" class="list-group-item list-group-item-action">Usuarios</a>
                        <a href="ListadoLibros.jsp" class="list-group-item list-group-item-action">Libros</a>
                        <a href="ListadoPrestamos.jsp" class="list-group-item list-group-item-action">Prestamos</a>
                        <a href="ListadoDevoluciones.jsp" class="list-group-item list-group-item-action">Devoluciones</a>
                    </div>
                               </div>
                            
                        <div class="col-sm-10">
                            
        <div class="container shadow-lg p-3 mb-5 bg-body p-2 text-dark bg-opacity-25 distanciatop border border-primary border-2">

            <form action="CrudDevolucion" method="post">   
              <table class="table2">
                    <tr>
                        <td class="td">
                            <input class="botoncrud" type="submit" name="accion" value="Nuevo">                            
                        </td>                                                                               
                        <td class="td">
                            <input class="cedula" placeholder="ID USUARIO" type="text" name="pkUsuarioId" onkeypress="return solonumeros(event)"> 
                        </td>
                    </tr>
                </table>
                <table class="table1">
                    <tr>
                        <td class="td" colspan="">
                            <p class="mensaje"><%out.print(request.getAttribute("msj"));%></p>
                        </td>
                    </tr>                  
                </table>

                <div class="table-responsive overflow-scroll divtabla">
                    <table class="table caption-top">
                        <h5>Lista de Devoluciones</h5>
                        
                        
                     <hr class="border border-2">
                        <thead>
                            <tr class="table-responsive">
                                <th>ID DEVOLUCIÓN</th>
                                <th>FECHA DEVOLUCIÓN</th>
                                <th>FECHA PRÉSTAMO</th>
                                <th>ID USUARIO</th>
                                <th>CÉDULA</th>
                                <th>NOMBRES</th>
                                <th>APELLIDOS</th>
                                <th>CORREO</th>
                                <th>CARRERA</th>
                                <th>NIVEL ACADÉMICO</th>
                                <th>FORMACIÓN ACADÉMICA</th>
                                <th>ID</th>
                                <th>CÓDIGO</th>
                                <th>AUTOR</th>
                                <th>EDICIÓN</th>
                                <th>AÑO PUBLICACIÓN</th>
                                <th>TÍTULO</th>
                                <th>CIUDAD</th>
                                <th>PAÍS</th>
                                <th>EDITORIAL</th>
                                <th>REGISTRO ISBN</th>
                                <th>NRO PÁGINAS</th>
                                <th>ESTADO</th>
                                <th>NRO EJEMPLARES</th>
                                <th>INCLUYE CD</th>
                                <th>TIPO</th>
                                <th>TIEMPO VIGENCIA</th>
                            </tr>
                        </thead>
                        <tbody>
                          <%
                              UserService user = new UserService();
                              List<User> datos = user.listarDevoluciones();
                              for (User u : datos) {
                            %> 
                            <tr>
                                <td><%= u.getPkDevolucionesId()%></td>
                                <td><%= u.getFechaDevolucion()%></td>
                                <td><%= u.getFechaPrestamo()%></td>
                                <td><%= u.getPkUsuariosId()%></td>
                                <td><%= u.getCedulaU()%></td>
                                <td><%= u.getNombresU()%></td>
                                <td><%= u.getApellidosU()%></td>
                                <td><%= u.getCorreoU()%></td>
                                <td><%= u.getCarreraId()%></td>
                                <td><%= u.getNivelAcademicoId()%></td>
                                <td><%= u.getFormacionAcademicaId()%></td>
                                <td><%= u.getPkLibrosId()%></td>
                                <td><%= u.getCodigoM()%></td>
                                <td><%= u.getAutorM()%></td>
                                <td><%= u.getEdicionM()%></td>
                                <td><%= u.getAnioPublicacionM()%></td>
                                <td><%= u.getTituloM()%></td>
                                <td><%= u.getCiudadM()%></td>
                                <td><%= u.getPaisM()%></td>
                                <td><%= u.getEditorialM()%></td>
                                <td><%= u.getRegistroISBNM()%></td>
                                <td><%= u.getNroPaginasM()%></td>
                                <td><%= u.getEstadoM()%></td>  
                                <td><%= u.getNroEjemplaresM()%></td> 
                                <td><%= u.getIncluyeCd()%></td> 
                                <td><%= u.getTipoM()%></td> 
                                <td><%= u.getTiempoVigenciaM()%></td>
                            </tr> 
                            <%}%>   
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
                                    
                                </div>
                            </div>
                        </div> 
                        </div>
                             
                    </div>
    </body>
</html>
