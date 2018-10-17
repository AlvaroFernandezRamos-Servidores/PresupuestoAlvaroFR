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
	//processRequest(request, response);
	ContenidoModel cont = new ContenidoModel();
	cont.setAccidentalDam((request.getParameter("accidentalDam")!=null)?true:false);
	cont.setCantidadAseg(Integer.parseInt(request.getParameter("cantidadAseg")));
	cont.setFrank(Integer.parseInt(request.getParameter("frank")));
	HttpSession sesion = request.getSession();
	sesion.setAttribute("contenido",cont);
	EleccionModel elec = (EleccionModel) sesion.getAttribute("eleccion");
	response.sendRedirect(elec.redirectMe());
    }
    
    @Override
    public String getServletInfo() {
	return "Short description";
    }

}
