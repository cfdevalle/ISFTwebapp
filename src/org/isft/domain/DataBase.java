/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.util.HashMap;

/**
 *
 * @author Jose
 */
public final class DataBase {
    private String user, password, origenDatos, motor;
    
    public DataBase(HashMap param){
        setUser(param.get("user")==null?"sergio":(String)param.get("user"));
        setPassword(param.get("password")==null?"1234":(String)param.get("password"));
        setMotor(param.get("motor")==null?"mysql":(String)param.get("motor"));
        setOrigenDatos(param.get("origen_datos")==null?"dbtp2":(String)param.get("origen_datos"));
    }

    /**
     * @return the userr
     */
    public String getUser() {
        return user;
    }

    /**
     * @param userr the userr to set
     */
    private void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the origenDatos
     */
    public String getOrigenDatos() {
        return origenDatos;
    }

    /**
     * @param origenDatos the origenDatos to set
     */
    public void setOrigenDatos(String origenDatos) {
        this.origenDatos = origenDatos;
    }

    /**
     * @return the motor
     */
    public String getMotor() {
        return motor;
    }

    /**
     * @param motor the motor to set
     */
    public void setMotor(String motor) {
        this.motor = motor;
    }
    
}
