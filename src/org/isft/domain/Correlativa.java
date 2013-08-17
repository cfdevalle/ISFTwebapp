/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Correlativa {
    private int cod_correlativa;
    
    private Materia materia;
    private Carrera carrera;

    /**
     * @return the cod_correlativa
     */
    public int getCod_correlativa() {
        return cod_correlativa;
    }

    /**
     * @param cod_correlativa the cod_correlativa to set
     */
    public void setCod_correlativa(int cod_correlativa) {
        this.cod_correlativa = cod_correlativa;
    }

    /**
     * @return the materia
     */
    public Materia getMateria() {
        return materia;
    }

    /**
     * @param materia the materia to set
     */
    public void setMateria(Materia materia) {
        this.materia = materia;
    }

    /**
     * @return the carrera
     */
    public Carrera getCarrera() {
        return carrera;
    }

    /**
     * @param carrera the carrera to set
     */
    public void setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }
}
