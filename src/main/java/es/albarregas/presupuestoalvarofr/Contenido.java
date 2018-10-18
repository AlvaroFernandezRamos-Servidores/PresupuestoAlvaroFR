/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.presupuestoalvarofr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Contenido", urlPatterns = {"/Contenido"})
public class Contenido extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	//Instanciamos un objeto ContenidoModel
	ContenidoModel cont = new ContenidoModel();
	//Y seteamos todos los parámetros
	cont.setAccidentalDam((request.getParameter("accidentalDam")!=null)?true:false);
	cont.setCantidadAseg(Integer.parseInt(request.getParameter("cantidadAseg")));
	cont.setFrank(Integer.parseInt(request.getParameter("frank")));
	//Recuperamos la sesión
	HttpSession sesion = request.getSession();
	//E introducimos el objeto en sesión
	sesion.setAttribute("contenido",cont);
	//Recuperamos el objeto Eleccion
	EleccionModel elec = (EleccionModel) sesion.getAttribute("eleccion");
	//Definimos este paso como completado
	elec.setContenido(false);
	//Y dejamos que Elección nos redirija
	response.sendRedirect(elec.redirectMe());
	/* Llegado a este punto, como no habría más pasos cabría esperar hacer la redirección y pasar los parametros por petición en lugar de
	por sesión, pero por consistencia en la metodología, por la idea de estandarización y vistas a posible ampliabilidad, se ha conservado
	por el metodo empleado en la siguiente, que facilmente podría incluir otro paso en el formulario.*/
    }
    
    @Override
    public String getServletInfo() {
	return "Short description";
    }

}
