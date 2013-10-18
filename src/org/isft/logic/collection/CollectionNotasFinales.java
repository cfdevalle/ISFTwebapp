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

/**
 *
 * @author Fabian
 */
public class CollectionNotasFinales implements org.isft.logic.AccessInterface {

    public Vector select(HashMap parameters) throws Exception {
        int legajo = (Integer)parameters.get("legajo");
        int cod_carrera = (Integer)parameters.get("cod_carrera");
        
        ResultSet rs = null;
        AccessManager am = new AccessManager();
        try{
            String query = "SELECT n.*, m.nombre FROM nota_examen n, materia m where m.Cod_Materia = n.Cod_Materia";
            rs = am.execute(query);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        Vector vec = new Vector();
        while(rs.next()){
            Nota_examen ex = new Nota_examen();
            ex.setNota_final(rs.getInt("Nota_final"));
            vec.add(ex);
        }
        System.out.println(vec);
        return vec;
        
        
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
