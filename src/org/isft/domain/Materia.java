/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Materia {
    private int cod_materia;
    private String nombre;
    private String modalidadCursada;

    /**
     * @return the cod_materia
     */
    public int getCod_materia() {
        return cod_materia;
    }

    /**
     * @param cod_materia the cod_materia to set
     */
    public void setCod_materia(int cod_materia) {
        this.cod_materia = cod_materia;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the modalidadCursada
     */
    public String getModalidadCursada() {
        return modalidadCursada;
    }

    /**
     * @param modalidadCursada the modalidadCursada to set
     */
    public void setModalidadCursada(String modalidadCursada) {
        this.modalidadCursada = modalidadCursada;
    }
    
}
