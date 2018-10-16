<%-- 
    Document   : eleccion
    Created on : Oct 15, 2018, 5:21:26 PM
    Author     : atomsk
--%>

<%@page import="javax.websocket.Session"%>
<%@page import="es.albarregas.presupuestoalvarofr.Eleccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path= request.getContextPath();
    boolean edif = false;
    boolean cont = false;
    if(request.getParameter("edif") !=null){
	edif = true;
    }
    if(request.getParameter("cont") !=null){
	cont = true;
    }
    
    if(!edif && !cont){
	response.sendRedirect(path +"/index.html");
    }else{
	Eleccion elec = new Eleccion();
	elec.setEdificio(edif?true:false);
	elec.setContenido(cont?true:false);
	HttpSession sesion = request.getSession();
    }
%>
