/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

/**
 *
 * @author Administrator
 */
public class UserService {
    
    public java.util.List<modelo.User> listarLibros() {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarLibros();
    }

    public java.util.List<modelo.User> listarUsuarios() {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarUsuarios();
    }

    public java.util.List<modelo.User> listarPrestamos() {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarPrestamos();
    }

    public java.util.List<modelo.User> listarDevoluciones() {
        modelo.Servicios_Service service = new modelo.Servicios_Service();
        modelo.Servicios port = service.getServiciosPort();
        return port.listarDevoluciones();
    }
}
