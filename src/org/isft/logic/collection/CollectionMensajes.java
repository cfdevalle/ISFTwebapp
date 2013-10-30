/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;
import org.isft.domain.Mensaje;

/**
 *
 * @author Asus
 */
public class CollectionMensajes implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
      String whereLegajo = "";
      String whereCarrera = "";
      if(!parameters.isEmpty()){
          if((Integer)parameters.get("legajo") != 0){
              whereLegajo = " AND m.Legajo = "+parameters.get("legajo"); 
          }
          if((Integer)parameters.get("carrera") != 0 ){
              whereCarrera = " AND m.Cod_Carrera = "+parameters.get("carrera");
          }
      }  
      
      ResultSet rs =null;
      AccessManager am = new AccessManager();
          //System.out.println("curso"+curso+curso.charAt(0));
        try{
            System.out.println("anio:1ro");
            String query = "Select m.titulo, m.mensaje, m.fecha, m.respondido, m.id_mensaje from mensaje m where 1";
            query += whereLegajo;
            query += whereCarrera;
            System.out.println(query);
            rs = am.execute(query);
            System.out.println("terminado carga de mensajes");  
        }catch (Exception e){
            System.out.println("error: "+e.getMessage());
        }
      
     
       Vector vec = new Vector();
       while (rs.next()){
        Mensaje m = new Mensaje();
        m.setTitulo(rs.getString("titulo"));
        m.setRespondido(rs.getBoolean("respondido"));
        m.setFecha(rs.getDate("fecha"));
        
        int cod = (int)rs.getInt("id_mensaje");
        m.setId_mensaje(cod);
        vec.add(m);
       }
       return vec;
       
    }
    
    
}
