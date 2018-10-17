/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.presupuestoalvarofr;

/**
 *
 * @author atomsk
 */
public class EleccionModel {
    boolean edificio;
    boolean contenido;
    String path="";

    public String getPath() {
	return path;
    }

    public void setPath(String path) {
	this.path = path;
    }

    public boolean isEdificio() {
	return edificio;
    }

    public void setEdificio(boolean edificio) {
	this.edificio = edificio;
    }

    public boolean isContenido() {
	return contenido;
    }

    public void setContenido(boolean contenido) {
	this.contenido = contenido;
    }
    
    public String redirectMe(){
	String ruta = path + "/JSP/verCuota.jsp";
	if(edificio){
	    ruta = path + "/JSP/edificio.jsp";
	}else if(contenido){
	    ruta = path +"/JSP/contenido.jsp";
	}
	return ruta;
    }
    
    
}
