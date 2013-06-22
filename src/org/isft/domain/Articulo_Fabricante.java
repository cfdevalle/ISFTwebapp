package org.isft.domain;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vahn
 */
public class Articulo_Fabricante {
    private int nroModelo;
    private double precio;
    private Fabricante fabricante;
    private Articulo articulo;


    public int getNroModelo() {
        return nroModelo;
    }
    public void setNroModelo(int nroModelo) {
        this.nroModelo = nroModelo;
    }

    public double getPrecio() {
        return precio;
    }
    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Fabricante getFabricante() {
        return fabricante;
    }
    public void setFabricante(Fabricante fabricante) {
        this.fabricante = fabricante;
    }

    public Articulo getArticulo() {
        return articulo;
    }
    public void setArticulo(Articulo articulo) {
        this.articulo = articulo;
    }
    
}
