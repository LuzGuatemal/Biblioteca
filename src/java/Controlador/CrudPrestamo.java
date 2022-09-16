/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.User;

/**
 *
 * @author Administrator
 */
public class CrudPrestamo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CrudPrestamo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrudPrestamo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        
         int pkUsuarioId, cedulaU, pkLibroId, nroPaginasM, nroEjemplaresM;
        String nombresU, apellidosU, correoU, carreraId, nivelAcademicoId, formacionAcademicaId, msj, accion, codigoM, autorM, edicionM, anioPublicacionM, tituloM, ciudadM, paisM, editorialM, registroISBN_M, estadoM, incluyeCd, tipoM, tiempoVigenciaM, fechaPrestamo;

        accion = request.getParameter("accion");

        if (accion.equalsIgnoreCase("Nuevo")) {
            pkUsuarioId = Integer.parseInt(request.getParameter("pkUsuarioId"));
            pkLibroId = Integer.parseInt(request.getParameter("pkLibroId"));
            User u = listarUsuariosId(pkUsuarioId);
            User d = listarLibrosId(pkLibroId);
            cedulaU = u.getCedulaU();
            nombresU = u.getNombresU();
            apellidosU = u.getApellidosU();
            correoU = u.getCorreoU();
            carreraId = u.getCarreraId();
            nivelAcademicoId = u.getNivelAcademicoId();
            formacionAcademicaId = u.getFormacionAcademicaId();

            codigoM = d.getCodigoM();
            autorM = d.getAutorM();
            edicionM = d.getEdicionM();
            anioPublicacionM = d.getAnioPublicacionM();
            tituloM = d.getTituloM();
            ciudadM = d.getCiudadM();
            editorialM = d.getEditorialM();
            paisM = d.getPaisM();
            registroISBN_M = d.getRegistroISBNM();
            nroPaginasM = d.getNroPaginasM();
            estadoM = d.getEstadoM();
            nroEjemplaresM = d.getNroEjemplaresM();
            incluyeCd = d.getIncluyeCd();
            tipoM = d.getTipoM();
            tiempoVigenciaM = d.getTiempoVigenciaM();

            request.setAttribute("pkUsuarioId", pkUsuarioId);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("cedulaU", cedulaU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("nombresU", nombresU);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("apellidosU", apellidosU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("correoU", correoU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("carreraId", carreraId);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nivelAcademicoId", nivelAcademicoId);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("formacionAcademicaId", formacionAcademicaId);//contenedor que va la resulatdo de una capa a otra

            request.setAttribute("pkLibroId", pkLibroId);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("codigoM", codigoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("autorM", autorM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("edicionM", edicionM);//contenedor que va la resulatdo de una capa a otra           
            request.setAttribute("anioPublicacionM", anioPublicacionM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tituloM", tituloM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("ciudadM", ciudadM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("editorialM", editorialM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("paisM", paisM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("registroISBNM", registroISBN_M);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nroPaginasM", nroPaginasM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("estadoM", estadoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nroEjemplaresM", nroEjemplaresM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("incluyeCd", incluyeCd);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tipoM", tipoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tiempoVigenciaM", tiempoVigenciaM);//contenedor que va la resulatdo de una capa a otra

            RequestDispatcher rp = request.getRequestDispatcher("RegistroPrestamo.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta
            
        } else if (accion.equalsIgnoreCase(" ")) {

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private static User listarUsuariosId(int pkUsuarioId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarUsuariosId(pkUsuarioId);
    }

    private static User listarLibrosId(int pkLibroId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarLibrosId(pkLibroId);
    }

}
