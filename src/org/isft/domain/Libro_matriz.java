/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Libro_matriz {
    private boolean regularizado;
    private long fecha_reg;
    private int nota_final;
    private long fecha_final;
    private int libroActExamen;
    private int FolioActExamen;
    private int folio_matriz;
    
    private Materia materia;
    private Alumnos alumnos;

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
     * @return the fecha_reg
     */
    public long getFecha_reg() {
        return fecha_reg;
    }

    /**
     * @param fecha_reg the fecha_reg to set
     */
    public void setFecha_reg(long fecha_reg) {
        this.fecha_reg = fecha_reg;
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
     * @return the fecha_final
     */
    public long getFecha_final() {
        return fecha_final;
    }

    /**
     * @param fecha_final the fecha_final to set
     */
    public void setFecha_final(long fecha_final) {
        this.fecha_final = fecha_final;
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
     * @return the folio_matriz
     */
    public int getFolio_matriz() {
        return folio_matriz;
    }

    /**
     * @param folio_matriz the folio_matriz to set
     */
    public void setFolio_matriz(int folio_matriz) {
        this.folio_matriz = folio_matriz;
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
}
