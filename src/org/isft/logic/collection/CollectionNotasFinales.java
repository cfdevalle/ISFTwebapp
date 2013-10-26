/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.FechaFinal;
import org.isft.domain.Materia;
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
        legajo=(Integer)parameters.get("legajo");
        cod_carrera=(Integer)parameters.get("carrera");
        System.out.println("ANTS DEL QUERY");
        Vector vec = new Vector();
        try{
            String query = "SELECT n.*, m.nombre, m.Cod_Materia FROM nota_examen n, materia m where m.Cod_Materia = n.Cod_Materia and n.Legajo = "+legajo+" and n.Cod_Carrera = "+cod_carrera;
            ResultSet rs = execute(query);
        while(rs.next()){
            //INSERTO DATOS DE NOTA
            Nota_examen ex = new Nota_examen();
            ex.setNota_final(rs.getInt("Nota_final"));
            ex.setModalidadInscripcion(rs.getString("ModalidadInscripcion"));
            ex.setFolioActExamen(rs.getInt("FolioActExamen"));
            ex.setLibroActExamen(rs.getInt("LibroActExamen"));
            
            Date d = rs.getDate("Fecha_examen");
            String turno = rs.getString("Turno");
            FechaFinal f = new FechaFinal(d, turno);
            //System.out.println(f.toString());
            ex.setFecha_examen(f);
            
            //INSERTO DATOS DE MATERIA
            Materia m = new Materia();
            m.setNombre(rs.getString("nombre"));
            m.setCod_materia(rs.getInt("Cod_Materia"));
            ex.setMateria(m);
            vec.add(ex);
        }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        return vec;
        
    }
    
}
