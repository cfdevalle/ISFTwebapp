/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Carrera {
    private int cod_carrera;
    private String nombre;
    private String descripcion;

    /**
     * @return the cod_carrera
     */
    public int getCod_carrera() {
        return cod_carrera;
    }

    /**
     * @param cod_carrera the cod_carrera to set
     */
    public void setCod_carrera(int cod_carrera) {
        this.cod_carrera = cod_carrera;
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
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
