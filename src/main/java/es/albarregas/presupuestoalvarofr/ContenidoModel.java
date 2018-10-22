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
// ESTE FICHERO ES UN BEAN Y NECESITA IMPLEMENTAR Serializable
public class ContenidoModel {
    boolean accidentalDam;
    // ESTE ATRIBUTO SERÍA DOUBLE
    int cantidadAseg;
    // UTILIZA NOMBRES DE VARIABLE QUE RECUERDEN A SU CONTENIDO
    int frank;
    // FALTA EL ATRIBUTO prima DEL TIPO DOUBLE

    public boolean isAccidentalDam() {
	return accidentalDam;
    }

    public void setAccidentalDam(boolean accidentalDam) {
	this.accidentalDam = accidentalDam;
    }

    public int getCantidadAseg() {
	return cantidadAseg;
    }

    public void setCantidadAseg(int cantidadAseg) {
	this.cantidadAseg = cantidadAseg;
    }

    public int getFrank() {
	return frank;
    }

    public void setFrank(int frank) {
	this.frank = frank;
    }
    
    
}
