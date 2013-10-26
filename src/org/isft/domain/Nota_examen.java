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
public class Nota_examen {
    private FechaFinal fecha_examen;
    private int nota_final;
    private boolean asistencia;
    private Date fecha_inscripcion;
    private int libroActExamen;
    private int FolioActExamen;
    private boolean semiPresencial;
    private String turno;
    private String modalidadInscripcion;
    
  /*  private Horario horario;*/
    private Alumnos alumnos;
    
    private Materia materia;

    /**
     * @return the fecha_examen
     */
    public FechaFinal getFecha_examen() {
        return fecha_examen;
    }

    /**
     * @param fecha_examen the fecha_examen to set
     */
    public void setFecha_examen(FechaFinal fecha_examen) {
        this.fecha_examen = fecha_examen;
    }

    /**
     * @return the nota_final
     */
    public int getNota_final() {
        return nota_final;
    }

    /**
     * @param nota_final the nota_final to set
     */
    public void setNota_final(int nota_final) {
        this.nota_final = nota_final;
    }

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
     * @return the fecha_inscripcion
     */
    public Date getFecha_inscripcion() {
        return fecha_inscripcion;
    }

    /**
     * @param fecha_inscripcion the fecha_inscripcion to set
     */
    public void setFecha_inscripcion(Date fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }

    /**
     * @return the libroActExamen
     */
    public int getLibroActExamen() {
        return libroActExamen;
    }

    /**
     * @param libroActExamen the libroActExamen to set
     */
    public void setLibroActExamen(int libroActExamen) {
        this.libroActExamen = libroActExamen;
    }

    /**
     * @return the FolioActExamen
     */
    public int getFolioActExamen() {
        return FolioActExamen;
    }

    /**
     * @param FolioActExamen the FolioActExamen to set
     */
    public void setFolioActExamen(int FolioActExamen) {
        this.FolioActExamen = FolioActExamen;
    }

    /**
     * @return the semiPresencial
     */
    public boolean isSemiPresencial() {
        return semiPresencial;
    }

    /**
     * @param semiPresencial the semiPresencial to set
     */
    public void setSemiPresencial(boolean semiPresencial) {
        this.semiPresencial = semiPresencial;
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
     * @return the horario
     */
 /*   public Horario getHorario() {
        return horario;
    }

    /**
     * @param horario the horario to set
     
    public void setHorario(Horario horario) {
        this.horario = horario;
    }
*/
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
