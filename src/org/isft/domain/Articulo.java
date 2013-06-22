package org.isft.domain;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vahn
 */
public class Articulo {
    private int nroInterno;
    private Sucursal sucursal;


    public int getNroInterno() {
        return nroInterno;
    }
    public void setNroInterno(int nroInterno) {
        this.nroInterno = nroInterno;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }
    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }
    
}
