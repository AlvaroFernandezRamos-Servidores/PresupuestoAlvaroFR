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
public class EdificioModel {
    String tipoEdificio;
    int nhab;
    int fechaCons;
    String tipoCons;
    int valorMercado;

    public String getTipoEdificio() {
	return tipoEdificio;
    }

    public void setTipoEdificio(String tipoEdificio) {
	this.tipoEdificio = tipoEdificio;
    }

    public int getNhab() {
	return nhab;
    }

    public void setNhab(int nhab) {
	this.nhab = nhab;
    }

    public int getFechaCons() {
	return fechaCons;
    }

    public void setFechaCons(int fechaCons) {
	this.fechaCons = fechaCons;
    }

    public String getTipoCons() {
	return tipoCons;
    }

    public void setTipoCons(String tipoCons) {
	this.tipoCons = tipoCons;
    }

    public int getValorMercado() {
	return valorMercado;
    }

    public void setValorMercado(int valorMercado) {
	this.valorMercado = valorMercado;
    }
    
    
}
