
package org.isft.logic.collection;


import org.isft.domain.Materia;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.AccessInterface;

public class CollectionFinalesInscriptos extends AccessManager implements AccessInterface {
       public Vector select(HashMap param) throws Exception{
        Vector vec_FinalesInscriptos = new Vector();
        try{
            String sql="SELECT nombre from materia";
            System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                String nombreMateria;
                nombreMateria=rst.getString("nombre");
                vec_FinalesInscriptos.add(nombreMateria);
                System.out.println("materia recuparada: " + nombreMateria);
            }             
        }catch(Exception exc){
            throw new Exception(exc);
        }
        finally{
            try{
                close_connection();
            }
            catch(Exception exc){
                throw new Exception(exc.getMessage());
            }
        }   
        return vec_FinalesInscriptos;
    }
    
}