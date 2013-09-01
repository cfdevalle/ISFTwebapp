/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

/**
 *
 * @author st
 */
public class Respuesta_mensaje {
    private int id_respuesta;
    private String respuesta;
    private Long fecha_respuesta;
    
    private Mensaje mensaje;    

    /**
     * @return the id_respuesta
     */
    public int getId_respuesta() {
        return id_respuesta;
    }

    /**
     * @param id_respuesta the id_respuesta to set
     */
    public void setId_respuesta(int id_respuesta) {
        this.id_respuesta = id_respuesta;
    }

    /**
     * @return the respuesta
     */
    public String getRespuesta() {
        return respuesta;
    }

    /**
     * @param respuesta the respuesta to set
     */
    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    /**
     * @return the fecha_respuesta
     */
    public Long getFecha_respuesta() {
        return fecha_respuesta;
    }

    /**
     * @param fecha_respuesta the fecha_respuesta to set
     */
    public void setFecha_respuesta(Long fecha_respuesta) {
        this.fecha_respuesta = fecha_respuesta;
    }

    /**
     * @return the mensaje
     */
    public Mensaje getMensaje() {
        return mensaje;
    }

    /**
     * @param mensaje the mensaje to set
     */
    public void setMensaje(Mensaje mensaje) {
        this.mensaje = mensaje;
    }
}
