/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Cursos_alumnos {
    private boolean asistencia;
    private boolean regularizado;
    private int notareg;
    private String modalidadInscripcion;
    private String turno;
    private String situacionAcademica;
    private Carrera carrera;
    private Curso curso;
    private Alumnos alumnos;
    private Materia materia;

    /**
     * @return the asistencia
     */
    public boolean isAsistencia() {
        return asistencia;
    }

    /**
     * @param asistencia the asistencia to set
     */
    public void setAsistencia(boolean asistencia) {
        this.asistencia = asistencia;
    }

    /**
     * @return the regularizado
     */
    public boolean isRegularizado() {
        return regularizado;
    }

    /**
     * @param regularizado the regularizado to set
     */
    public void setRegularizado(boolean regularizado) {
        this.regularizado = regularizado;
    }

    /**
     * @return the notareg
     */
    public int getNotareg() {
        return notareg;
    }

    /**
     * @param notareg the notareg to set
     */
    public void setNotareg(int notareg) {
        this.notareg = notareg;
    }

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
     * @return the situacionAcademica
     */
    public String getSituacionAcademica() {
        return situacionAcademica;
    }

    /**
     * @param situacionAcademica the situacionAcademica to set
     */
    public void setSituacionAcademica(String situacionAcademica) {
        this.situacionAcademica = situacionAcademica;
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

    /**
     * @return the alumnos
     */
    public Alumnos getAlumnos() {
        return alumnos;
    }

    /**
     * @param alumnos the alumnos to set
     */
    public void setAlumnos(Alumnos alumnos) {
        this.alumnos = alumnos;
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
