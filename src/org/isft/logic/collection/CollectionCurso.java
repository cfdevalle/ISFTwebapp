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
 * @author Asus
 */
public class CollectionCurso implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        String carrera=(String)parameters.get("carrera");
        
       ResultSet rs =null;
       AccessManager am = new AccessManager();
       try{
       rs = am.execute("Select * from curso where Curso.cod_carrera='"+carrera+"';");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       Vector vec = new Vector();
       while (rs.next()){
       String descripcion = rs.getString("descripcion");
       String cod_curso=rs.getString("cod_curso");
       String turno=rs.getString("turno");
       String Cod_carrera=rs.getString("cod_carrera");
       //Curso curso = new Curso(descripcion, turno, Integer.parseInt(cod_curso));
       Curso curso=new Curso();
       curso.setCod_curso(Integer.parseInt(cod_curso));
       curso.setTurno(turno);
       curso.setDescripcion(descripcion);
       vec.add(curso);
       }
       return vec;
       
        
       
    }
    
  
}