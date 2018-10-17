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
public class CalcularCuota {
    
    public static double calcularEdificio(EdificioModel edif){
	double resultado = edif.getValorMercado() * 0.005;
	switch(edif.getTipoEdificio()){
	    case "Piso":resultado *= 0.95;break;
	    case "Casa":resultado *= 1;break;
	    case "Adosado":resultado *= 1.05;break;
	    case "Duplex":resultado *= 1.10;break;
	    case "Chalet":resultado *= 1.20;break;
	}
	resultado += (resultado/100) * edif.getNhab();
	switch(edif.getFechaCons()){
	    case 1949:resultado *= 1.09;break;
	    case 1951:resultado *= 1.06;break;
	    case 1991:resultado *= 1.04;break;
	    case 2006:resultado *= 1.02;break;
	    case 2016:resultado *= 1.01;break;
	}
	
	if(edif.getTipoCons().equals("madera")){
	    resultado*=1.1;
	}
	
	return resultado;
    }
    public static double calcularContenido(ContenidoModel cont){
	double resultado = cont.getCantidadAseg() * 0.008;
	if(cont.isAccidentalDam()){
	    resultado *= 1.25;
	}
	switch(cont.getFrank()){
	    case 500:resultado *= 0.9;break;
	    case 1000:resultado *= 0.8;break;
	}
	return resultado;
    }
}
