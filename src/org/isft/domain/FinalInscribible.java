/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.sql.Date;
import java.util.Vector;

/**
 *
 * @author Administrador
 */
public class FinalInscribible {
    private Date fecha_reg;
    private Materia materia;
    private Alumno alumno;
    private Carrera carrera;
    private Vector<FechaFinal> fechas;
    private Cursos_alumnos situacion_materia;
    private String accion;
    public FinalInscribible(){
        this.materia=new Materia();
        this.alumno=new Alumno();
        this.carrera=new Carrera();
        this.fechas=new Vector();
        this.situacion_materia=new Cursos_alumnos();
    }   

    /**
     * @return the fecha_reg
     */
    public Date getFecha_reg() {
        return fecha_reg;
    }

    /**
     * @param fecha_reg the fecha_reg to set
     */
    public void setFecha_reg(Date fecha_reg) {
        this.fecha_reg = fecha_reg;
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
     * @return the fechas
     */
    public Vector<FechaFinal> getFechas() {
        return fechas;
    }

    /**
     * @param fechas the fechas to set
     */
    public void setFechas(Vector<FechaFinal> fechas) {
        this.fechas = fechas;
    }

    /**
     * @return the situacion_materia
     */
    public Cursos_alumnos getSituacion_materia() {
        return situacion_materia;
    }

    /**
     * @param situacion_materia the situacion_materia to set
     */
    public void setSituacion_materia(Cursos_alumnos situacion_materia) {
        this.situacion_materia = situacion_materia;
    }

    /**
     * @return the accion
     */
    public String getAccion() {
        return accion;
    }

    /**
     * @param accion the accion to set
     */
    public void setAccion(String accion) {
        this.accion = accion;
    }
    
}
