package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;
import org.isft.domain.Materia;


public class CollectionMateriaEquivalencias implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        
       String codigo=(String)parameters.get("cod_carrera");
       ResultSet rs =null;
       AccessManager am = new AccessManager();
        System.out.println("codigo de materia para hacer el select"+codigo);
       try{
          
           rs = am.execute("SELECT cod_materia,nombre FROM materia WHERE cod_carrera="+codigo);
          
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
      
       Vector vec = new Vector();
       while (rs.next()){
           
           int cod = rs.getInt("cod_materia");
           String nombre = rs.getString("nombre");
           Materia materia=new Materia();
           materia.setCod_materia(cod);
           materia.setNombre(nombre);
           vec.add(materia);
       }
       return vec;
       
    }
    
    
}
