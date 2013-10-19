/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessManager;
import org.isft.domain.Nota_examen;
import org.isft.logic.AccessInterface;

/**
 *
 * @author Fabian
 */
public class CollectionNotasFinales extends AccessManager implements AccessInterface {

    public Vector select(HashMap parameters) throws Exception {
        int legajo, cod_carrera;
        if(parameters!=null && !parameters.isEmpty()){
            if(parameters.get("legajo")!=null){
                legajo=(Integer)parameters.get("legajo");
            }
            if(parameters.get("cod_carrera")!=null){
                cod_carrera =(Integer)parameters.get("cod_carrera");
            }
        }
        System.out.println("ANTS DEL QUERY");
        Vector vec = new Vector();
        try{
            String query = "SELECT n.*, m.nombre FROM nota_examen n, materia m where m.Cod_Materia = n.Cod_Materia";
            ResultSet rs = execute(query);
        System.out.println("AVERGAS");
        while(rs.next()){
            Nota_examen ex = new Nota_examen();
            ex.setNota_final(rs.getInt("Nota_final"));
            vec.add(ex);
        }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        return vec;
        
    }
    
}
