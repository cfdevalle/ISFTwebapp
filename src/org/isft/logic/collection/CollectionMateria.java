
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
        String cod_carrera="", cod_materia="";
        try{
            
            if (param!=null && !param.isEmpty()){
                if(param.get("cod_carrera")!=null){
                    cod_carrera=(String)param.get("cod_carrera");
                }
                if(param.get("cod_materia")!=null){
                    cod_materia=(String)param.get("cod_materia");
                }
            }
            
            String sql="SELECT * from materia  where cod_materia is not null";
            if(!cod_carrera.equals("")){
                sql+=" and cod_carrera=" + cod_carrera;
            }
            if(!cod_materia.equals("")){
                sql+=" and cod_materia=" + cod_materia;
            }
            
            System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                Materia materia=new Materia();
                materia.setCod_materia(rst.getInt("cod_materia"));
                materia.setModalidadCursada(rst.getString("ModalidadInscripcion"));
                materia.setModalidadInscripcion(rst.getString("ModalidadInscripcion"));
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