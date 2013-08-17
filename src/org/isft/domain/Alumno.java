/**
 *
 * @author SEBASTIAN
 */
package org.isft.domain;
public class Alumno {
    private int Legajo;
    private String Nombre;
    private String Apellido;
    private String pwd;
   
    public String getNombre() {
        return this.Nombre;
    }
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    public String getPwd() {
        return this.pwd;
    }
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    public String getApellido() {
        return this.Apellido;
    }
    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }
    public int getLegajo() {
        return this.Legajo;
    }
    public void setLegajo(int Legajo) {
        this.Legajo = Legajo;
    }
}
