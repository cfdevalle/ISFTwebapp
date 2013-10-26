/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.updater;

import java.util.HashMap;

/**
 *
 * @author st
 */
public class AbmEquivalencias extends UpdaterManager implements UpdaterInterface {

    public void insert(HashMap parameters) throws Exception {
        try{
            String carrera_o = (String)parameters.get("carrera_o");
            String materia_o = (String)parameters.get("materia_o");
            String carrera_d = (String)parameters.get("carrera_d");
            String materia_d = (String)parameters.get("materia_d");
            
            
            String sql_insert="INSERT INTO equivalencias (cod_materia_o,cod_carrera_o,cod_materia_d,cod_carrera_d) VALUES('"+materia_o+"','"+carrera_o+"','"+materia_d+"','"+carrera_d+"')";
            System.out.println("Cadena de insercion: " + sql_insert);
            execute(sql_insert);
        }
        catch(Exception exc){
           throw new Exception(exc.getMessage());
        }
        
    }

    public void delete(HashMap parameters) throws Exception {
        try{
            String carrera_o = (String)parameters.get("carrera_o");
            String materia_o = (String)parameters.get("materia_o");
            String carrera_d = (String)parameters.get("carrera_d");
            String materia_d = (String)parameters.get("materia_d");
            System.out.println("datos carrera o"+carrera_o+"materia o"+materia_o+" carrera d"+carrera_d+" materia_d"+materia_d);
            String sql_delete="DELETE FROM equivalencias WHERE cod_carrera_d='"+carrera_d+"' AND cod_materia_d='"+materia_d+"' AND cod_carrera_o='"+carrera_o+"' AND cod_materia_o='"+materia_o+"'";
            
            execute(sql_delete);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
       }
       
    }

    public void update(HashMap parameters) throws Exception {
        try{
          
        }
        catch(Exception exc){
            throw new Exception(exc.getMessage());
        }         
    }
}