/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.updater;

import java.util.HashMap;

/**
 *
 * @author Fabian
 */
public class AbmMensaje extends UpdaterManager implements UpdaterInterface{
    @Override
    public void insert(HashMap hm){
        String titulo = (String)hm.get("titulo");
        String mensaje = (String)hm.get("mensaje");
        int legajo = (Integer)hm.get("legajo");
        int carrera = (Integer)hm.get("carrera");
        
        try{
            String query = "INSERT INTO mensaje(titulo, mensaje, Legajo, Cod_Carrera, respondido, fecha) VALUES ('"+titulo+"', '"+mensaje+"', "+legajo+", "+carrera+", 0, NOW())";
            System.out.println(query);
            execute(query);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
     public void insertRespuesta(HashMap hm){
        String respuesta = (String)hm.get("respuesta");
        int mensaje = (Integer)hm.get("id_mensaje");
        int respondido = (Integer)hm.get("respondido");
        
        try{
            String query = "INSERT INTO respuesta_mensaje(respuesta, id_mensaje, fecha_respuesta) VALUES ('"+respuesta+"',"+mensaje+" , NOW())";
            System.out.println(query);
            execute(query);
            System.out.println(respondido);
            String update = "UPDATE  mensaje SET respondido =  "+respondido+" WHERE  id_mensaje ="+mensaje+"";
            System.out.println(update);
            execute(update);
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    @Override
    public void update(HashMap hm){
        
    }
    
    public void delete(HashMap hm){
        try{
            int mensaje = (Integer)hm.get("id_mensaje");
            
            String sql_delete_respuesta="DELETE FROM respuesta_mensaje WHERE id_mensaje ='"+mensaje+"'";
            execute(sql_delete_respuesta);
            
            String sql_delete_mensaje="DELETE FROM mensaje WHERE id_mensaje ='"+mensaje+"'";
            execute(sql_delete_mensaje);
            System.out.println(sql_delete_mensaje);
            System.out.println(sql_delete_respuesta);
        }
        catch(Exception exc){
            System.out.println(exc.getMessage());
        }        
    }
    
    
}
