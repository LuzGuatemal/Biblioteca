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
public class CrudLibro extends HttpServlet {

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
            out.println("<title>Servlet CrudLibro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrudLibro at " + request.getContextPath() + "</h1>");
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
        
        int pkLibroId, nroPaginasM, nroEjemplaresM, res;
        String msj, accion, codigoM, autorM, edicionM, anioPublicacionM, tituloM, ciudadM, paisM, editorialM, registroISBNM, estadoM, incluyeCd, tipoM, tiempoVigenciaM;

        accion = request.getParameter("accion");

        if (accion.equalsIgnoreCase("Nuevo")) {
            //request.getSession().setAttribute("persona1", p1);
            RequestDispatcher rp = request.getRequestDispatcher("RegistroLibros.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta

        } else if (accion.equalsIgnoreCase("Actualizar")) {
            pkLibroId = Integer.parseInt(request.getParameter("pkLibroId"));
            User d = listarLibrosId(pkLibroId);
            codigoM = d.getCodigoM();
            autorM = d.getAutorM();
            edicionM = d.getEdicionM();
            anioPublicacionM = d.getAnioPublicacionM();
            tituloM = d.getTituloM();
            ciudadM = d.getCiudadM();
            editorialM = d.getEditorialM();
            paisM = d.getPaisM();
            registroISBNM = d.getRegistroISBNM();
            nroPaginasM = d.getNroPaginasM();
            estadoM = d.getEstadoM();
            nroEjemplaresM = d.getNroEjemplaresM();
            incluyeCd = d.getIncluyeCd();
            tipoM = d.getTipoM();
            tiempoVigenciaM = d.getTiempoVigenciaM();
            
            request.setAttribute("pkLibroId", pkLibroId);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("codigoM", codigoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("autorM", autorM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("edicionM", edicionM);//contenedor que va la resulatdo de una capa a otra           
            request.setAttribute("anioPublicacionM", anioPublicacionM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tituloM", tituloM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("ciudadM", ciudadM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("editorialM", editorialM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("paisM", paisM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("registroISBNM", registroISBNM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nroPaginasM", nroPaginasM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("estadoM", estadoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nroEjemplaresM", nroEjemplaresM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("incluyeCd", incluyeCd);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tipoM", tipoM);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("tiempoVigenciaM", tiempoVigenciaM);//contenedor que va la resulatdo de una capa a otra

       RequestDispatcher rp = request.getRequestDispatcher("EditarLibros.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta
      
        } else if (accion.equalsIgnoreCase("Eliminar")) {
            msj="ELIMINADO CON ÉXITO";
            pkLibroId = Integer.parseInt(request.getParameter("pkLibroId"));          
            eliminarLibro(pkLibroId);
            request.setAttribute("msj", msj);//contenedor que va la resulatdo de una capa a otra
            RequestDispatcher rp = request.getRequestDispatcher("ListadoLibros.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta

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

    private static User eliminarLibro(int pkLibroId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.eliminarLibro(pkLibroId);
    }

    private static User listarLibrosId(int pkLibroId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarLibrosId(pkLibroId);
    }

}
