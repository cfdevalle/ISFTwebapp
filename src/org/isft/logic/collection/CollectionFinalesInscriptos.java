
package org.isft.logic.collection;


import org.isft.domain.Materia;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.domain.Carrera;
import org.isft.domain.FinalInscripto;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.AccessInterface;

public class CollectionFinalesInscriptos extends AccessManager implements AccessInterface {
       public Vector select(HashMap parameters) throws Exception{
        Vector<FinalInscripto> vec_FinalesInscriptos = new Vector();
        try{
            System.out.println("entro al collection de finales inscriptos");
            Alumnos alu=(Alumnos) parameters.get("alumno");
            Vector<Carrera> carreras=new Vector();
            carreras=alu.getCarreras();
            String sql="select ma.Nombre, nt.Fecha_Examen, nt.Turno, nt.Cod_Materia, nt.Cod_Carrera, nt.Legajo \n" +
                        "from nota_examen nt, materia ma\n" +
                        "where nt.Cod_Materia=ma.Cod_Materia\n" +
                        "and nt.Legajo="+alu.getLegajo()+"\n" +
                        "and nt.Cod_Carrera="+carreras.elementAt(0).getCod_carrera()+"\n"+
                        "and Fecha_Examen < cast((now() + interval 45 day) as date)\n" +
                        "and Fecha_Examen > cast((now() - interval 45 day) as date)";
            System.out.println("el legajo es: "+alu.getLegajo());
            System.out.println("la carrera es: "+carreras.elementAt(0).getCod_carrera());
            System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                FinalInscripto fi=new FinalInscripto();
                fi.getMateria().setNombre(rst.getString("nombre"));
                fi.getMateria().setCod_materia(Integer.parseInt(rst.getString("Cod_Materia")));
                fi.getCarrera().setCod_carrera(Integer.parseInt(rst.getString("Cod_Carrera")));
                fi.getAlumno().setLegajo(Integer.parseInt(rst.getString("Legajo")));
                String turno="";
                if(rst.getString("Turno").equals("TM")){
                    turno="Turno Ma&ntildeana";
                }else{
                    turno="Turno Noche";
                }
                fi.setTurno(turno);
                fi.setFecha_examen(rst.getDate("Fecha_Examen"));
                fi.setProfesor("estatico");
                vec_FinalesInscriptos.add(fi);
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