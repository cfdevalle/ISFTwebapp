/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.sql.Date;

/**
 *
 * @author Tsuryu
 */
public class FinalInscripto {
    private Materia materia=new Materia();
    private Date fecha_examen;
    private String turno;
    private String profesor;
    private Carrera carrera=new Carrera();
    private Alumno alumno=new Alumno();
    
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
     * @return the profesor
     */
    public String getProfesor() {
        return profesor;
    }

    /**
     * @param profesor the profesor to set
     */
    public void setProfesor(String profesor) {
        this.profesor = profesor;
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
     * @return the fecha_examen
     */
    public Date getFecha_examen() {
        return fecha_examen;
    }

    /**
     * @param fecha_examen the fecha_examen to set
     */
    public void setFecha_examen(Date fecha_examen) {
        this.fecha_examen = fecha_examen;
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

    /**
     * @return the alumno
     */
    public Alumno getAlumno() {
        return alumno;
    }

    /**
     * @param alumno the alumno to set
     */
    public void setAlumno(Alumno alumno) {
        this.alumno = alumno;
    }
}
