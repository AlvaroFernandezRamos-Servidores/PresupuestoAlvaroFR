/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.presupuestoalvarofr;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author atomsk
 */
@WebServlet(name = "Edificio", urlPatterns = {"/Edificio"})
public class Edificio extends HttpServlet {

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
	//Instanciamos un objeto de la clase EdificioModel
	EdificioModel edif = new EdificioModel();
	//Seteamos sus atributos
	edif.setTipoEdificio(request.getParameter("tipoEdif"));
	edif.setNhab(Integer.parseInt(request.getParameter("nHab")));
	edif.setFechaCons(Integer.parseInt(request.getParameter("fechaCons")));
	edif.setValorMercado(Integer.parseInt(request.getParameter("valorMerc")));
	edif.setTipoCons(request.getParameter("tipoCons"));
	//Recuperamos la sesión
	HttpSession sesion = request.getSession();
	//Guardamos el objeto en sesión
	sesion.setAttribute("edificio",edif);
	//Preguntamos al objeto EleccionModel que tenemos en sesión cual será la siguiente dirección
	EleccionModel elec = (EleccionModel) sesion.getAttribute("eleccion");
	//Y redirigimos hacia ella
	response.sendRedirect(elec.redirectMe());
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

}
