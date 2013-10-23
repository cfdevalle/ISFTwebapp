/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.domain.Carrera;
import org.isft.domain.Examenes;
import org.isft.logic.AccessInterface;
import org.isft.logic.AccessManager;

/**
 *
 * @author Administrador
 */
public class CollectionFechaFinal extends AccessManager implements AccessInterface{

    public Vector select(HashMap parameters) throws Exception {
        Vector<Examenes> vec_examenes = new Vector();
        try{
            Alumnos alu=(Alumnos) parameters.get("alumno");
            String sql="select exa.Fecha1,exa.Fecha2,exa.Turno,exa.Cod_Materia,exa.Cod_Carrera,mat.Nombre\n" +
                        "from examenes exa, materia mat, carrera ca\n" +
                        "where exa.Cod_materia=mat.Cod_materia\n" +
                        "and ca.Cod_Carrera=exa.Cod_Carrera\n"+
                        "and ca.Cod_Carrera="+alu.getCarrera().getCod_carrera()+"\n"+
                        "order by Cod_Materia";
            ResultSet rst = execute(sql);
            while(rst.next()){
                Examenes exa=new Examenes();
                exa.setFecha1(rst.getDate("Fecha1"));     
                exa.setFecha2(rst.getDate("Fecha2"));
                String turno="";
                if(rst.getString("Turno").equals("TM")){
                    turno="Turno Ma&ntildeana";
                }else{
                    turno="Turno Noche";
                }
                exa.setTurno(turno);
                exa.getMateria().setCod_materia(Integer.parseInt(rst.getString("Cod_Materia")));
                exa.getMateria().setNombre(rst.getString("nombre"));
                exa.getCarrera().setCod_carrera(Integer.parseInt(rst.getString("Cod_Carrera")));
                vec_examenes.add(exa);
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
        return vec_examenes;
    }
    
}