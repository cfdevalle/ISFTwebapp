/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Carrera;
import org.isft.logic.AccessManager;

/**
 *
 * @author Asus
 */
public class CollectionCarrera  implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
       String campos = (String)parameters.get("campos");
       String tablas = (String)parameters.get("tablas");
       ResultSet rs =null;
       AccessManager am = new AccessManager();
       try{
       rs = am.execute("Select "+campos+" from "+tablas+";");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       Vector vec = new Vector();
       int i=0;
       while (rs.next()){
           i++;
       String nombre = rs.getString("nombre");
       String cod_carrera = rs.getString("Cod_carrera");
       String descripcion = rs.getString("descripcion");
       //Carrera carrera= new Carrera(Integer.parseInt(Cod_carrera), nombre, descripcion);
       Carrera carrera=new Carrera();
       carrera.setCod_carrera(Integer.parseInt(cod_carrera));
       carrera.setNombre(nombre);
       carrera.setDescripcion(descripcion);
           
        System.out.println("carrera nº"+i+": "+nombre);
       vec.add(carrera);
       }
       return vec;
       
    }
    
    
}
