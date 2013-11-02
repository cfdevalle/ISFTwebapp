/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Materia;
import org.isft.logic.AccessManager;

/**
 *
 * @author Carolina
 */
public class CollectionMateriasSicnod implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        //recupero parametros del hashMap
       String campos = (String)parameters.get("campos");
       String curso=(String)parameters.get("curso");
       String carrera=(String)parameters.get("carrera"); 
       
	   ResultSet rs =null;
       //instancia AccessManager para realizar coneccion y las consultas
       AccessManager am = new AccessManager();
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
			int codigo=rs.getInt("Cod_materia");
			//se agregan los datos al vector
			Materia materia = new Materia();
			materia.setCod_materia(codigo);
			materia.setNombre(nombre);
			vec.add(materia);
       }
       //se retorna el vector
       return vec;
       
    }
    
    
}
