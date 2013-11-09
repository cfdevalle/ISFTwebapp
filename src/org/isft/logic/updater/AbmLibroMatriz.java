/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.updater;

import java.util.HashMap;
import org.isft.domain.helper.FechaPagSql;
/**
 *
 * @author st
 */
public class AbmLibroMatriz extends UpdaterManager implements UpdaterInterface {

    public void insert(HashMap parameters) throws Exception {
        try{
            String sql_insert="INSERT INTO libro_matriz (Regularizado, Fecha_Reg, Nota_Final, Fecha_Final,LibroActExamen,FolioActExamen,Folio_Matriz,Libro_Matriz,Cod_Materia,Cod_Carrera,Legajo)"
                    + " values('"+(String)parameters.get("regularizado")+"','"+(String)parameters.get("fechaReg")+"', '"+(String)parameters.get("notaFinal")+"', '"+(String)parameters.get("fechaFinal")+"')";
            //System.out.println("Cadena de insercion: " + sql_insert);
            execute(sql_insert);
        }
        catch(Exception exc){
           throw new Exception(exc.getMessage());
        }
    }

    public void delete(HashMap parameters) throws Exception {
        try{
            String sql_delete="DELETE FROM libro_matriz WHERE legajo="+(String)parameters.get("legajo")+" AND cod_materia="+(String)parameters.get("codMateria");
            execute(sql_delete);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
       }
    }

    public void update(HashMap parameters) throws Exception {
        try{
            FechaPagSql auxFecha=new FechaPagSql();
            String sql_update="UPDATE libro_matriz set "
                    + "Libro_Matriz="+(String)parameters.get("libroMatriz")+","
                    + "Folio_Matriz="+(String)parameters.get("folioMatriz")+","
                    + "LibroActExamen="+(String)parameters.get("libroActExamen")+","
                    + "FolioActExamen="+(String)parameters.get("folioActExamen")+","
                    + "Fecha_Reg=\""+auxFecha.formatoFechaSql((String)parameters.get("fechaReg"))+"\","
                    + "Regularizado="+(String)parameters.get("regularizado")+","
                    + "Fecha_Final=\""+auxFecha.formatoFechaSql((String)parameters.get("fechaFinal"))+"\","
                    + "Nota_Final="+(String)parameters.get("notaFinal")
                    +" WHERE legajo="+(String)parameters.get("legajo")+" AND Cod_Materia="+(String)parameters.get("codMateria");
           // System.out.println("UPDATE EN BASE: "+sql_update);
       //      String sql_update="UPDATE USUARIO set PASSWORD='"+(String)parameters.get("password")+"', APELLIDO='"+(String)parameters.get("apellido")+"', NOMBRE='"+(String)parameters.get("nombre")+"' where USUARIO='"+(String)parameters.get("usuario")+"'";
            execute(sql_update);
        }
        catch(Exception exc){
            throw new Exception(exc.getMessage());
        }         
    }
}
