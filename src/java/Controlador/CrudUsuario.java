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
public class CrudUsuario extends HttpServlet {

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
            out.println("<title>Servlet CrudUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrudUsuario at " + request.getContextPath() + "</h1>");
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
        
        int pkUsuarioId, cedulaU;
        String nombresU,apellidosU,correoU,carreraId,nivelAcademicoId,formacionAcademicaId, msj, accion;

        accion = request.getParameter("accion");

        if (accion.equalsIgnoreCase("Nuevo")) {
            //request.getSession().setAttribute("persona1", p1);
            RequestDispatcher rp = request.getRequestDispatcher("RegistrarUsuarios.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta

        }else if (accion.equalsIgnoreCase("Actualizar")) {           
            pkUsuarioId = Integer.parseInt(request.getParameter("pkUsuarioId"));
            User u = listarUsuariosId(pkUsuarioId);
            cedulaU = u.getCedulaU();
            nombresU = u.getNombresU();
            apellidosU = u.getApellidosU();
            correoU = u.getCorreoU();
            carreraId = u.getCarreraId();
            nivelAcademicoId = u.getNivelAcademicoId();
            formacionAcademicaId = u.getFormacionAcademicaId();


            request.setAttribute("pkUsuarioId", pkUsuarioId);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("cedulaU", cedulaU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("nombresU", nombresU);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("apellidosU", apellidosU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("correoU", correoU);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("carreraId", carreraId);//contenedor que va la resulatdo de una capa a otra
            request.setAttribute("nivelAcademicoId", nivelAcademicoId);//contenedor que va la resulatdo de una capa a otra 
            request.setAttribute("formacionAcademicaId", formacionAcademicaId);//contenedor que va la resulatdo de una capa a otra

            RequestDispatcher rp = request.getRequestDispatcher("EditarUsuarios.jsp"); // nos cambia de pagina 
            rp.forward(request, response); // save a donde saltar con la respuesta

        } else if (accion.equalsIgnoreCase("Eliminar")) {
            msj="ELIMINADO CON ÉXITO";
            pkUsuarioId = Integer.parseInt(request.getParameter("pkUsuarioId"));
            eliminarUsuario(pkUsuarioId);
            request.setAttribute("msj", msj);//contenedor que va la resulatdo de una capa a otra
            RequestDispatcher rp = request.getRequestDispatcher("ListadoUsuarios.jsp"); // nos cambia de pagina 
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

    private static User eliminarUsuario(int pkUsuarioId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.eliminarUsuario(pkUsuarioId);
    }

    private static User listarUsuariosId(int pkUsuarioId) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarUsuariosId(pkUsuarioId);
    }

}
