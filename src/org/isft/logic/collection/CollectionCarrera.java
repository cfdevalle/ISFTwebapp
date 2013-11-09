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
 * @author Carolina
 */
public class CollectionCarrera  implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
       //se recuperan parametros del hashmap 
       String campos = (String)parameters.get("campos");
       String tablas = (String)parameters.get("tablas");
       ResultSet rs =null;
       //se instancia clase accesManager para la coneccion y ejecucion de consultas
       AccessManager am = new AccessManager();
       try{
         //realizo la consulta segun el campo requerido y la tabla (esto se hizo asi por que no se puede no usar el hashmap)  
       rs = am.execute("Select "+campos+" from "+tablas+";");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       //instancio vector
       Vector vec = new Vector();
       int i=0;
       //while para recuperar datos de la consulta
       while (rs.next()){
           i++;
       String nombre = rs.getString("nombre");
       String cod_carrera = rs.getString("Cod_carrera");
       String descripcion = rs.getString("descripcion");
       //se instancia carrera
       Carrera carrera=new Carrera();
       //se setean sus variables internas
       carrera.setCod_carrera(Integer.parseInt(cod_carrera));
       carrera.setNombre(nombre);
       carrera.setDescripcion(descripcion);
           
        //System.out.println("carrera nº"+i+": "+nombre);
       //se agregan al vector
        vec.add(carrera);
       }
       //se retorna el vector ya cargado con carreras
       return vec;
       
    }
    
    
}
