/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SEBASTIAN
 */
package org.isft.domain;
//import org.isft.domain.Usuario;
//import org.isft.domain.Rol;

public class UsuarioRol {
    private Usuario usuario;
    private Rol rol;

    public UsuarioRol(){};
    
    public Usuario getUsuario() {
        return usuario;
    }
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public Rol getRol() {
        return rol;
    }
    public void setRol(Rol rol) {
        this.rol = rol;
    }
}
