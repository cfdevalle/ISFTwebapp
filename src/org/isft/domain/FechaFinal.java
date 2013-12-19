/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.sql.Date;

/**
 *
 * @author Administrador
 */
public class FechaFinal {
    private Date fecha;
    private String turno;
        
    
    public FechaFinal(Date fecha,String turno){
        this.fecha=fecha;
        this.turno=turno;
    }

    public FechaFinal() {
        
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
    
    
}
