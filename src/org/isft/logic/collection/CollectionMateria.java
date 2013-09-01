
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

public class CollectionMateria extends AccessManager implements AccessInterface {
       public Vector select(HashMap param) throws Exception{
        Vector vec_Materias = new Vector();
        try{
        		String sql="SELECT * from materia  where cod_materia like %"+param.get("cod_materia")+"%";
        		
		     		
        		System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                Materia materia=new Materia();
                materia.setCod_materia(rst.getInt("cod_carrera"));
                materia.setModalidadCursada(rst.getString("ModalidadCursada"));
                materia.setNombre(rst.getString("nombre"));
                vec_Materias.add(materia);
                System.out.println("materia recuparada: " + materia.getNombre());
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
        return vec_Materias;
    }
    
}