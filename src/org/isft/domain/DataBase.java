/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.util.HashMap;

import java.util.ResourceBundle;
/**
 *
 * @author Jose
 */
public final class DataBase {
    private String user, password, origenDatos, motor;
    
	String origen_datos_ = "";
    String password_ = "";
    String user_ = "";
//    ResourceBundle resbound = ResourceBundle.getBundle("web.conexionDb");
//    try {
//        origen_datos = resbound.getString("origen_datos");
//        user_ = resbound.getString("user");
//        password_ = resbound.getString("password");
//    } catch (Exception exc) {
//        System.out.println("MISSING EXCEPTION:" + exc.toString());
//        throw new ServletException("Reporte no encontrado");
//    }

//    HashMap paramSQL = new HashMap();
//    paramSQL.put("origen_datos", origen_datos);
//    paramSQL.put("user", user_);
//    paramSQL.put("password", password_);
	
    public DataBase(HashMap param){
		System.out.println("uno");
		ResourceBundle resbound = ResourceBundle.getBundle("web.conectionDb");
		System.out.println("dos");
		origen_datos_ = resbound.getString("origen_datos");
        user_ = resbound.getString("user");
        password_ = resbound.getString("password");
		System.out.println("tres");
		try {
			origen_datos_ = resbound.getString("origen_datos");
			user_ = resbound.getString("user");
			password_ = resbound.getString("password");
			
			System.out.println("CONEXION UNFICADA= DB:" + origen_datos_ +":USER:"+user_+":PASS: "+password_);
		} catch (Exception exc) {
			System.out.println("MISSING EXCEPTION:" + exc.toString());
		}
		
        setUser(param.get("user")==null ? user_ : (String)param.get("user"));
        setPassword(param.get("password")==null ? password_: (String)param.get("password"));
        setMotor(param.get("motor")==null?"mysql":(String)param.get("motor"));
        setOrigenDatos(param.get("origen_datos")==null? origen_datos_ : (String)param.get("origen_datos"));
		
//        setUser(param.get("user")==null?"root":(String)param.get("user"));
//        setPassword(param.get("password")==null?"1234":(String)param.get("password"));
//        setMotor(param.get("motor")==null?"mysql":(String)param.get("motor"));
//        setOrigenDatos(param.get("origen_datos")==null?"isftwebappfinal":(String)param.get("origen_datos"));
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
