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
import org.isft.domain.Carrera;
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
            String query="SELECT a.legajo,a.apellido,a.nombre,a.pwd,c.cod_carrera, c.nombre as nombre_carrera FROM alumnos a, carrera c WHERE a.cod_carrera=c.cod_carrera AND a.legajo="+alumno_login.getLegajo()+" AND a.pwd="+alumno_login.getPwd()+""; 
            System.out.println("CONSULTA:"+query);
            rst = s.executeQuery(query);
            Vector carreras= new Vector();
            
            
            while(rst.next()){
                
                alumno.setLegajo(rst.getInt("Legajo"));
                alumno.setNombre(rst.getString("Nombre"));
                alumno.setApellido(rst.getString("Apellido"));
                alumno.setPwd(rst.getString("pwd"));
               
                Carrera carrera=new Carrera();
                carrera.setCod_carrera(rst.getInt("Cod_carrera"));
                carrera.setNombre(rst.getString("nombre_carrera"));
                
                
                carreras.add(carrera);
            }
            alumno.setCarreras(carreras);
        }catch(Exception exc){
            System.out.println("EXCEPCION AL INTENTAR CONECTAR CON LA BASE DE DATOS x: " + exc.getMessage());
        }
        System.out.println("lalala: "+ alumno.getCarreras());
        
        return alumno;
    }
    
   
}
