/**
 *
 * @author SEBASTIAN
 */
package org.isft.domain;
public class Usuario {
    private String usuario;
    private String password;
    private int usuario_id;
    public Usuario(){}

    public String getUsuario() {
        return usuario;
    }
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public int getUsuarioId() {
        return usuario_id;
    }
    public void setUsuarioId(int usuario_id) {
        this.usuario_id = usuario_id;
    }
}
