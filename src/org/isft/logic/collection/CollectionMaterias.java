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
 * @author Carolina
 */
public class CollectionMaterias implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        //recupero parametros del hashMap
       String campos = (String)parameters.get("campos");
       String curso=(String)parameters.get("curso");
       String carrera=(String)parameters.get("carrera"); 
       System.out.println("curso"+curso);
        
       System.out.println("charAT: "+curso.charAt(0));
       ResultSet rs =null;
       //instancia AccessManager para realizar coneccion y las consultas
       AccessManager am = new AccessManager();
       //si el codigo del curso que entro por parametros empieza con 1 
       //se realiza la consulta para las materias entre el codigo 100-199 
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
     
       //si el codigo del curso que entro por parametros empieza con 2 
       //se realiza la consulta para las materias entre el codigo 200-299 
         if (curso.charAt(0)=='2'){
       try{
           System.out.println("anio:2do");
           rs = am.execute("Select "+campos+" from materia, carrera where materia.cod_materia>200&&materia.cod_materia<300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
       
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       }
       
       //si el codigo del curso que entro por parametros empieza con 3 
       //se realiza la consulta para las materias entre el codigo 300-399 
		if (curso.charAt(0)=='3'){
			try{
				System.out.println("anio:3ro");
				rs = am.execute("Select "+campos+" from materia,carrera where materia.cod_materia>300&&carrera.cod_carrera='"+carrera+"'&&materia.cod_carrera=carrera.cod_carrera;");
			}catch (Exception e){
				System.out.println("error"+e.getMessage());
			}
		}
		if(curso.equals("TODOS")){
			try{
				System.out.println("TODAS LAS MATERIAS!!! NO ME ELIMINES!!!!!!!!");
				rs = am.execute("SELECT "+campos+" FROM materia,carrera WHERE carrera.cod_carrera='"+carrera+"' AND materia.cod_carrera = carrera.cod_carrera;");
			}catch (Exception e){
				System.out.println("error"+e.getMessage());
			}
		}
         // se instancia un vector 
       Vector vec = new Vector();
       //se recuperan datos de la consulta realizada
       while (rs.next()){
			String nombre = rs.getString("nombre");
			String codigo=rs.getString("Cod_materia");
			//se agregan los datos al vector
			vec.add(nombre);
			vec.add(codigo);
       }
       //se retorna el vector
       return vec;
       
    }
    
    
}
