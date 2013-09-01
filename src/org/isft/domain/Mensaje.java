/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Mensaje {
    private int id_mensaje;
    private String titulo;
    private String mensaje;
    private Long fecha;
    private boolean respondido;
    
    private Alumnos alumnos;

    /**
     * @return the id_mensaje
     */
    public int getId_mensaje() {
        return id_mensaje;
    }

    /**
     * @param id_mensaje the id_mensaje to set
     */
    public void setId_mensaje(int id_mensaje) {
        this.id_mensaje = id_mensaje;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the mensaje
     */
    public String getMensaje() {
        return mensaje;
    }

    /**
     * @param mensaje the mensaje to set
     */
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    /**
     * @return the fecha
     */
    public Long getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Long fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the respondido
     */
    public boolean isRespondido() {
        return respondido;
    }

    /**
     * @param respondido the respondido to set
     */
    public void setRespondido(boolean respondido) {
        this.respondido = respondido;
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
