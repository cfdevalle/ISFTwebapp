package org.isft.domain;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vahn
 */
public class Fabricante {
    private String razonSocial;
    private String domicilio;
    private int idFabricante;

    public String getRazonSocial() {
        return razonSocial;
    }
    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getDomicilio() {
        return domicilio;
    }
    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public int getIdFabricante() {
        return idFabricante;
    }
    public void setIdFabricante(int idFabricante) {
        this.idFabricante = idFabricante;
    }

}
