package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;
import org.isft.domain.Equivalencias;



public class CollectionEquivalencias implements org.isft.logic.AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        
       String codigoC=(String)parameters.get("cod_carrera");
       String codigoM=(String)parameters.get("cod_materia");
       ResultSet rs =null;
       AccessManager am = new AccessManager();
        //System.out.println("codigo de materia para hacer el select"+codigo);
       try{
          
           rs = am.execute("SELECT * FROM equivalencias WHERE cod_carrera_o="+codigoC+" AND cod_materia_o="+codigoM);
          
       }catch (Exception e){
           System.out.println("error"+e.getMessage());
       }
      
       Vector vec = new Vector();
       while (rs.next()){
           
           int cod_car_ori = rs.getInt("cod_carrera_o");
           int cod_mat_ori = rs.getInt("cod_materia_o");
           int codM = rs.getInt("cod_materia_d");
           int codC = rs.getInt("cod_carrera_d");
           
           Equivalencias equivalencias=new Equivalencias();
           equivalencias.setCod_carrera_o(cod_car_ori);           
           equivalencias.setCod_materia_o(cod_mat_ori);
           equivalencias.setCod_carrera_d(codC);
           equivalencias.setCod_materia_d(codM);
                      
           vec.add(equivalencias);
       }
       return vec;
       
    }
    
    
}