/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.isft.logic.AccessManager;

/**
 *
 * @author Asus
 */
public class CollectionHorario extends  org.isft.logic.AccessManager{

    public Vector getdias () throws Exception {
         
       ResultSet rs =null;
       AccessManager am = new AccessManager();
       
       try{
       rs = am.execute("Select descripcion from dia; ");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       Vector vec = new Vector();
       while (rs.next()){
       String nombre = rs.getString("descripcion");
           System.out.println("dias: "+nombre);
           
       vec.add(nombre);
       }
      System.out.println("dias.size"+vec.size());
           
       return vec;
       
        
    }
    public Vector gethora_desde() throws SQLException{
       ResultSet rs =null;
       AccessManager am = new AccessManager();
        System.out.println("entro en gethora_desde");
       try{
       rs = am.execute("Select distinct hora_desde from hora;");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       Vector vec = new Vector();
       
       while (rs.next()){
       String nombre;
            nombre = String.valueOf(rs.getTime("hora_desde"));
            System.out.println("nombre"+nombre);
       vec.add(nombre);
       }
        System.out.println("salida de gethoras");
       return vec;
       }
    public Vector getMateriahora (HashMap hm){
    
    String hora= (String) hm.get("hora");
    String curso=(String)hm.get("curso");
    String carrera=(String)hm.get("carrera");
    String dia=(String)hm.get("dia");
        System.out.println("dia:"+dia);
        System.out.println("carrera: "+carrera);
        System.out.println("hora:"+hora);
        System.out.println("dia: "+dia);
     AccessManager am = new AccessManager();
     ResultSet rs=null;   
     System.out.println("entro en getmateriahorario");
       try{
           rs = am.execute("Select materia.nombre, profesor.nombre, profesor.apellido from profesor, horario, dia, curso, materia, hora, carrera where materia.cod_materia=horario.cod_materia&&curso.Cod_curso='"+curso+"'&& curso.cod_curso=horario.cod_curso&&dia.dia='"+dia+"'&&dia.dia=horario.dia&& hora.hora_desde='"+hora+"'&&hora.hora_desde=horario.hora_desde&&carrera.Cod_carrera='"+carrera+"'&&carrera.cod_carrera=horario.cod_carrera&&horario.legajoprofesor=profesor.legajoprofesor;");
           System.out.println("rs = am.execute(\"Select materia.nombre, profesor.nombre, profesor.apellido from profesor, horario, dia, curso, materia, hora, carrera where materia.cod_materia=horario.cod_materia&&curso.descripcion='"+curso+"'&& curso.cod_curso=horario.cod_curso&&dia.dia='"+dia+"'&&dia.dia=horario.dia&& hora.hora_desde='"+hora+"'&&hora.hora_desde=horario.hora_desde&&carrera.nombre='"+carrera+"'&&carrera.cod_carrera=horario.cod_carrera&&horario.legajoprofesor=profesor.legajoprofesor;");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       Vector vec = new Vector();
        try {
            
            while (rs.next()){
                System.out.println("hay datos");
            String nombre = rs.getString("materia.nombre");
            String profesor=rs.getString("profesor.nombre");
            String apellidoP=rs.getString("profesor.apellido");
                System.out.println("materia: "+ nombre);
            vec.add(nombre);
            vec.add(profesor);
            vec.add(apellidoP);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CollectionHorario.class.getName()).log(Level.SEVERE, null, ex.getMessage());
        }
       
       
    return vec;
    }
    public Vector getmatdia(HashMap hm) throws Exception {
        System.out.println("entrando en getmatdia cambiado");
    String hora= (String) hm.get("hora");
        System.out.println("matdia: "+hora);
    String curso=(String)hm.get("curso");
        System.out.println("matdia: "+curso);
     AccessManager am = new AccessManager();
     ResultSet rs=null;   
      try{
      rs = am.execute("Select dia.descripcion from horario, dia, curso, materia,hora where materia.cod_materia=horario.cod_materia&&curso.cod_curso='"+curso+"'&& curso.cod_curso=horario.cod_curso&&dia.dia=horario.dia&& hora.hora_desde='"+hora+"'&&hora.hora_desde=horario.hora_desde;");
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
       
       Vector vec = new Vector();
            while (rs.next()){
                System.out.println("dentro del while");
            String dia = rs.getString("descripcion");
                System.out.println("matdia:"+dia);
            vec.add(dia);
            
            }
            System.out.println("vec matdia:"+vec.size());
            return vec;
    }
}