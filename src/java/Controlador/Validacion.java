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
public class Validacion extends HttpServlet {

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
            out.println("<title>Servlet Validacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validacion at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
       
       int cedula, Validar = 0;
        String contrasenia, cargo, msj;
        cedula = Integer.parseInt(request.getParameter("cedula"));
        contrasenia = request.getParameter("contrasenia");
        cargo = request.getParameter("cargo");
        Validar = validar(cedula, contrasenia, cargo);

        if (Validar == 1) {
            if (cargo.equalsIgnoreCase("Administrador")) {
                RequestDispatcher rp = request.getRequestDispatcher("Inicio.jsp"); //cambia de pantalla index
                rp.forward(request, response);
            } else {

                request.setAttribute("cedula", cedula);//contenedor que va la resulatdo de una capa a otra
                //request.setAttribute("cedula",res);//contenedor que va la resulatdo de una capa a otra
                RequestDispatcher rp = request.getRequestDispatcher("InicioUsuarios.jsp"); //cambia de pantalla index
                rp.forward(request, response);

            }
        } else {
            msj = "USUARIO / CONTRASEÑA INCORRECTO ";
            request.setAttribute("msj", msj);//contenedor que va la resulatdo de una capa a otra
            //request.setAttribute("cedula",res);//contenedor que va la resulatdo de una capa a otra
            RequestDispatcher rp = request.getRequestDispatcher("index.jsp"); //cambia de pantalla index
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

    private static int validar(int cedula, java.lang.String contrasenia, java.lang.String cargo) {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.validar(cedula, contrasenia, cargo);
    }

}
