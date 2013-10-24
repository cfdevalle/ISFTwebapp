/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Carrera;
import org.isft.domain.Profesor;
import org.isft.logic.AccessManager;

/**
 *
 * @author Pablo
 */
public class CollectionProfesores {
    
    public Vector select(HashMap parameters) throws Exception {
        //se recuperan parametros del hashmap
       String campos = (String)parameters.get("campos");
       String tablas = (String)parameters.get("tablas");
       ResultSet rs =null;
       //se instancia accessmanager
       AccessManager am = new AccessManager();
       try{
           //se realiza la consulta
       rs = am.execute("Select "+campos+" from "+tablas+";");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       //se instancia un vector
       Vector vec = new Vector();
       int i=0;
       //se sacan datos de la consulta
       while (rs.next()){
           i++;
       String nombre = rs.getString("nombre");
       String legajoprofesor = rs.getString("legajoProfesor");
       String apellido = rs.getString("apellido");
           Profesor profe = new Profesor ();
       profe.setLegajoProfesor(Integer.parseInt(legajoprofesor));
       profe.setNombre(nombre);
       profe.setApellido(apellido);
           
        System.out.println("carrera nº"+i+": "+nombre);
        //se agrega al vector
       vec.add(profe);
       }
       //se retorna el vector
       return vec;
       
    }
    
    

}
