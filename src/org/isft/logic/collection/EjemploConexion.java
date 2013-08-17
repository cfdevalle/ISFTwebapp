/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;
import org.isft.domain.Alumnos;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;

/**
 *
 * @author Jose
 */
public class EjemploConexion {
 
    public Vector traerClientes(){
        Vector vec = new Vector();
        try{
            DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM Cliente");   
            while(rst.next()){
                vec.add(rst.getString("idCliente")  + " - " + rst.getString("apellido") + "-" + rst.getString("nombre"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS : " + exc.getMessage());
        }
        return vec;
    }
    public boolean usuarioValido(Alumnos alumno,HashMap paramSQL){
        //Vector vec = new Vector();
        boolean result = false;
        try{
            /*
             * pasar al hashmap la db 'login'
             */
            DataBase db = new DataBase(paramSQL);
            //DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM alumnos WHERE legajo='"+alumno.getLegajo()+"' AND pwd='"+alumno.getPwd()+"'");
            //rst = s.executeQuery("SELECT * FROM usuario WHERE usuario='"+usuario.getUsuario()+"' AND password='"+usuario.getPassword()+"'");
            while(rst.next()){
                result = true;
                //vec.add(rst.getString("idCliente")  + " - " + rst.getString("apellido") + "-" + rst.getString("nombre"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS x: " + exc.getMessage());
        }
        return result;
    }
    public Alumnos getFullUsuario(Alumnos alumno_login,HashMap paramSQL){
        Alumnos alumno=new Alumnos();
        try{
            DataBase db = new DataBase(paramSQL);
            //DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT * FROM alumnos WHERE Legajo='"+alumno_login.getLegajo()+"' AND pwd='"+alumno_login.getPwd()+"'");
            while(rst.next()){
                
                alumno.setLegajo(rst.getInt("Legajo"));
                alumno.setNombre(rst.getString("Nombre"));
                alumno.setApellido(rst.getString("Apellido"));
                alumno.setPwd(rst.getString("pwd"));

//                vec.add(rst.getString("legajo"));
//                vec.add(rst.getString("nombre"));
//                vec.add(rst.getString("apellido"));
            }
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS x: " + exc.getMessage());
        }
        //System.out.println("lalala: "+ alumno.getPwd());
        return alumno;
    }
    
   
}
