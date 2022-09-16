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

/**
 *
 * @author Administrator
 */
public class EditarLibro extends HttpServlet {

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
            out.println("<title>Servlet EditarLibro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarLibro at " + request.getContextPath() + "</h1>");
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
        //zona de captura de datos
        accion = request.getParameter("accion");

        if (accion.equalsIgnoreCase("Guardar")) {
            pkLibroId = Integer.parseInt(request.getParameter("pkLibroId"));
            codigoM = request.getParameter("codigoM");
            autorM = request.getParameter("autorM");
            edicionM = request.getParameter("edicionM");
            anioPublicacionM = request.getParameter("anioPublicacionM");
            tituloM = request.getParameter("tituloM");
            ciudadM = request.getParameter("ciudadM");
            paisM = request.getParameter("paisM");
            editorialM = request.getParameter("editorialM");
            registroISBNM = request.getParameter("registroISBNM");
            nroPaginasM = Integer.parseInt(request.getParameter("nroPaginasM"));
            estadoM = request.getParameter("estadoM");
            nroEjemplaresM = Integer.parseInt(request.getParameter("nroEjemplaresM"));
            incluyeCd = request.getParameter("incluyeCd");
            tipoM = request.getParameter("tipoM");
            tiempoVigenciaM = request.getParameter("tiempoVigenciaM");

            msj = actualizarLibro(pkLibroId, codigoM, autorM, edicionM, anioPublicacionM, tituloM, ciudadM, paisM, editorialM, registroISBNM, nroPaginasM, estadoM, nroEjemplaresM, incluyeCd, tipoM, tiempoVigenciaM);
            request.setAttribute("msj", msj);//contenedor que va la resulatdo de una capa a otra
          
            RequestDispatcher rp = request.getRequestDispatcher("ListadoLibros.jsp"); //cambia de pantalla index
            rp.forward(request, response);
        } else {
            RequestDispatcher rp = request.getRequestDispatcher("ListadoLibros.jsp"); //cambia de pantalla index
            rp.forward(request, response);
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

    private static String actualizarLibro(int pkLibrosId, java.lang.String codigoM, java.lang.String autorM, java.lang.String edicionM, java.lang.String anioPublicacionM, java.lang.String tituloM, java.lang.String ciudadM, java.lang.String paisM, java.lang.String editorialM, java.lang.String registroISBNM, int nroPaginasM, java.lang.String estadoM, int nroEjemplaresM, java.lang.String incluyeCd, java.lang.String tipoM, java.lang.String tiempoVigenciaM) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.actualizarLibro(pkLibrosId, codigoM, autorM, edicionM, anioPublicacionM, tituloM, ciudadM, paisM, editorialM, registroISBNM, nroPaginasM, estadoM, nroEjemplaresM, incluyeCd, tipoM, tiempoVigenciaM);
    }

}
