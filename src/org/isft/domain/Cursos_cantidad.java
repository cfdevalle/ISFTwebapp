/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Cursos_cantidad {
    private int lectivo;
    private int cant_alumnos;
    
    private Profesor profesor;
    private Carrera carrera;
    private Curso curso;

    /**
     * @return the lectivo
     */
    public int getLectivo() {
        return lectivo;
    }

    /**
     * @param lectivo the lectivo to set
     */
    public void setLectivo(int lectivo) {
        this.lectivo = lectivo;
    }

    /**
     * @return the cant_alumnos
     */
    public int getCant_alumnos() {
        return cant_alumnos;
    }

    /**
     * @param cant_alumnos the cant_alumnos to set
     */
    public void setCant_alumnos(int cant_alumnos) {
        this.cant_alumnos = cant_alumnos;
    }

    /**
     * @return the profesor
     */
    public Profesor getProfesor() {
        return profesor;
    }

    /**
     * @param profesor the profesor to set
     */
    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
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
     * @return the curso
     */
    public Curso getCurso() {
        return curso;
    }

    /**
     * @param curso the curso to set
     */
    public void setCurso(Curso curso) {
        this.curso = curso;
    }
}
