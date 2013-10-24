/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Curso;
import org.isft.logic.AccessManager;

/**
 *
 * @author Pablo
 */
public class CollectionCurso implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        //recupero parametros del hashMap
        String carrera=(String)parameters.get("carrera");
        
       ResultSet rs =null;
       //instancio AccessManager para el uso de consultas
       AccessManager am = new AccessManager();
       try{
           //se realiza la consulta usando carrera como condicion
       rs = am.execute("Select * from curso where Curso.cod_carrera='"+carrera+"';");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       //instancio un vector
       Vector vec = new Vector();
       
       // se sacan los datos de la consulta
       while (rs.next()){
       String descripcion = rs.getString("descripcion");
       String cod_curso=rs.getString("cod_curso");
       String turno=rs.getString("turno");
       String Cod_carrera=rs.getString("cod_carrera");
       
       //se instancia curso
       Curso curso=new Curso();
       
       //se setean sus variables
       curso.setCod_curso(Integer.parseInt(cod_curso));
       curso.setTurno(turno);
       curso.setDescripcion(descripcion);
       //se agrega al vector
       vec.add(curso);
       }
       //se retorna el vector
       return vec;
       
        
       
    }
    
  
}