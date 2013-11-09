/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.logic.AccessInterface;
import org.isft.logic.AccessManager;
import org.isft.domain.Libro_matriz;
import org.isft.domain.Alumnos;
import org.isft.domain.Materia;
import org.isft.domain.helper.FechaHora;
/**
 *
 * @author VouChets
 */
public class CollectionLibroMatriz extends AccessManager implements AccessInterface {

    public Vector select(HashMap parameters) throws Exception {
        Vector vec=new Vector();
        
        try{
            String sql="SELECT * from libro_matriz WHERE Legajo="+parameters.get("legajo");
           // System.out.println(parameters.get("legajo"));
          //  System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            while(rst.next()){
                Libro_matriz libro=new Libro_matriz();
                Alumnos alu=new Alumnos();
                alu.setLegajo(Integer.parseInt(rst.getString("Legajo")));
                libro.setAlumnos(alu);
                
                Materia mat=new Materia();
                mat.setCod_materia(Integer.parseInt(rst.getString("Cod_Materia")));
                
                libro.setMateria(mat);
                libro.setFecha_reg(rst.getString("Fecha_Reg"));
                libro.setNota_final(Integer.parseInt(rst.getString("Nota_Final")));
                libro.setFecha_final(rst.getString("Fecha_Final"));
                libro.setLibroActExamen(Integer.parseInt(rst.getString("LibroActExamen")));
                libro.setFolioActExamen(Integer.parseInt(rst.getString("FolioActExamen")));
                libro.setFolio_matriz(Integer.parseInt(rst.getString("Folio_Matriz")));
                libro.setLibro_Matriz(Integer.parseInt(rst.getString("Libro_Matriz")));
                if (Integer.parseInt(rst.getString("Regularizado"))==1)
                    libro.setRegularizado(true);
                else
                    libro.setRegularizado(false);
                vec.add(libro);
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
        return vec;    
    }
}
