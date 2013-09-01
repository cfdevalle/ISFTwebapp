/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Examenes {
    private String modalidadInscripcion;
    private Long fecha1;
    private Long fecha2;
    private String turno;
    private Materia materia;

    /**
     * @return the modalidadInscripcion
     */
    public String getModalidadInscripcion() {
        return modalidadInscripcion;
    }

    /**
     * @param modalidadInscripcion the modalidadInscripcion to set
     */
    public void setModalidadInscripcion(String modalidadInscripcion) {
        this.modalidadInscripcion = modalidadInscripcion;
    }

    /**
     * @return the fecha1
     */
    public Long getFecha1() {
        return fecha1;
    }

    /**
     * @param fecha1 the fecha1 to set
     */
    public void setFecha1(Long fecha1) {
        this.fecha1 = fecha1;
    }

    /**
     * @return the fecha2
     */
    public Long getFecha2() {
        return fecha2;
    }

    /**
     * @param fecha2 the fecha2 to set
     */
    public void setFecha2(Long fecha2) {
        this.fecha2 = fecha2;
    }

    /**
     * @return the turno
     */
    public String getTurno() {
        return turno;
    }

    /**
     * @param turno the turno to set
     */
    public void setTurno(String turno) {
        this.turno = turno;
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
}
