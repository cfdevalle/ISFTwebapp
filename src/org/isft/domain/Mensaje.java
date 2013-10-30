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
public class Mensaje {
    private int id_mensaje;
    private String titulo;
    private String mensaje;
    private Date fecha;
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
    public Date getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Date fecha) {
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
    /*
    public void mandarMensaje(){
         String query = "INSERT INTO m.titulo, m.mensaje, m.respondido, m.Cod_Carrera m.legajo from mensaje m, alumnos a, carrera c where a.legajo = m.legajo and c.cod_carrera = 1";
         System.out.println(query);
         rs = am.execute(query);
         System.out.println("terminado carga de mensajes");  
    }
    */
    
}
