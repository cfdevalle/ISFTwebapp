/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.sql.Date;

/**
 *
 * @author st
 */
public class Examenes {
    private String modalidadInscripcion;
    private Date fecha1;
    private Date fecha2;
    private String turno;
    private Materia materia=new Materia();
    private Carrera carrera=new Carrera();

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
    public Date getFecha1() {
        return fecha1;
    }

    /**
     * @param fecha1 the fecha1 to set
     */
    public void setFecha1(Date fecha1) {
        this.fecha1 = fecha1;
    }

    /**
     * @return the fecha2
     */
    public Date getFecha2() {
        return fecha2;
    }

    /**
     * @param fecha2 the fecha2 to set
     */
    public void setFecha2(Date fecha2) {
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
