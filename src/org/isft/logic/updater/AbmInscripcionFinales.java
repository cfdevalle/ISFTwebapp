package org.isft.logic.updater;

import java.util.HashMap;

/**
 *
 * @author jcafferata
 */
public class AbmInscripcionFinales extends UpdaterManager implements UpdaterInterface{

    @Override
    public void insert(HashMap parameters) throws Exception {
        try{
            String campos="Legajo,Cod_Carrera,Cod_Materia,ModalidadInscripcion,Turno,Fecha_inscripcion,Fecha_Examen";
            String valores=(String)parameters.get("legajo")+",";
            valores+=(String)parameters.get("cod_carrera")+",";
            valores+=(String)parameters.get("cod_materia")+",";
            valores+="'"+(String)parameters.get("modadlidad_inscripcion")+"',";
            valores+="'"+(String)parameters.get("turno")+"',";
            valores+="'"+(String)parameters.get("fecha_actual")+"',";
            valores+="'"+(String)parameters.get("fecha_final")+"'";
            String sql_insert="insert into nota_examen ("+campos+") values ("+valores+")";
            execute(sql_insert);
        }catch(Exception exc){
           throw new Exception(exc.getMessage());
        }       
    }

    @Override
    public void delete(HashMap parameters) throws Exception {
        try{
            String sql_delete="delete from nota_examen where Legajo="+(String)parameters.get("legajo")+" and Cod_Materia="+(String)parameters.get("cod_materia")+" and Cod_Carrera="+(String)parameters.get("cod_carrera")+"";
            execute(sql_delete);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }        
    }

    @Override
    public void update(HashMap parameters) throws Exception {
        try{
            String sql_update="UPDATE nota_examen SET ";
            sql_update+=" Turno='"+(String)parameters.get("turno")+"'";
            sql_update+=", Fecha_inscripcion='"+(String)parameters.get("fecha_actual")+"'";
            sql_update+=", Fecha_Examen='"+(String)parameters.get("fecha_final")+"'";
            sql_update+="where Legajo="+(String)parameters.get("legajo")+"";
            sql_update+=" and Cod_Carrera="+(String)parameters.get("cod_carrera")+"";
            sql_update+=" and Cod_Materia="+(String)parameters.get("cod_materia")+"";
            System.out.println(sql_update);
            execute(sql_update);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }       
    }

}
