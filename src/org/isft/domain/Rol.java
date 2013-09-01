/**
 *
 * @author SEBASTIAN
 */
package org.isft.domain;
public class Rol {
    private int idRol;
    private String descripcionRol;

    public Rol(){}

    public String getVescripcionRol() {
        return descripcionRol;
    }
    public void setDescripcionRol(String descripcionRol) {
        this.descripcionRol = descripcionRol;
    }
    public int getRolId() {
        return idRol;
    }
    public void setRolId(int idRol) {
        this.idRol = idRol;
    }
}
