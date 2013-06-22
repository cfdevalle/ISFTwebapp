package org.isft.domain;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vahn
 */
public class Empleado {
    private String Nombre;
    private String Apellido;
    private String Domicilio;
    private int nroEmpleado;
    private Sucursal nroSucursal;
    private Categoria categoria;

  
    public String getNombre() {
        return Nombre;
    }
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }
    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getDomicilio() {
        return Domicilio;
    }
    public void setDomicilio(String Domicilio) {
        this.Domicilio = Domicilio;
    }

    public int getNroEmpleado() {
        return nroEmpleado;
    }
    public void setNroEmpleado(int nroEmpleado) {
        this.nroEmpleado = nroEmpleado;
    }

    public Sucursal getNroSucursal() {
        return nroSucursal;
    }
    public void setNroSucursal(Sucursal nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public Categoria getCategoria() {
        return categoria;
    }
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }


}

