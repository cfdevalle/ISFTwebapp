/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;

/**
 *
 * @author Asus
 */
public class CollectionMaterias implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        
       String campos = (String)parameters.get("campos");
       
       
       String curso=(String)parameters.get("curso");
       String carrera=(String)parameters.get("carrera"); 
       System.out.println("curso"+curso);
        
        System.out.println("campos"+campos);
       ResultSet rs =null;
       AccessManager am = new AccessManager();
       if (curso.charAt(0)=='1'){
           System.out.println("curso"+curso+curso.charAt(0));
       try{
           System.out.println("anio:1ro");
           rs = am.execute("Select "+campos+" from materia, carrera where materia.cod_materia>100&&materia.cod_materia<200&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
           System.out.println("terminado carga de materias");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       }
     
         if (curso.charAt(0)=='2'){
       try{
           System.out.println("anio:2do");
           rs = am.execute("Select "+campos+" from materia, carrera where materia.cod_materia>200&&materia.cod_materia<300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
       
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       }
       
         if (curso.charAt(0)=='3'){
       try{
           System.out.println("anio:3ro");
           rs = am.execute("Select "+campos+" from materia,carrera where materia.cod_materia>300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
       
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       }
     
       Vector vec = new Vector();
       while (rs.next()){
       String nombre = rs.getString("nombre");
       String codigo=rs.getString("Cod_materia");
       vec.add(nombre);
       vec.add(codigo);
       }
       return vec;
       
    }
    
    
}
