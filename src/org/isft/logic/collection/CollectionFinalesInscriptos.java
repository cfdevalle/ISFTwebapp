
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
            String sql="select ma.Nombre, nt.Fecha_Examen, nt.Turno, nt.Cod_Materia, nt.Cod_Carrera, nt.Legajo \n" +
                        "from nota_examen nt, materia ma\n" +
                        "where nt.Cod_Materia=ma.Cod_Materia\n" +
                        "and nt.Legajo="+alu.getLegajo()+"\n" +
                        "and nt.Cod_Carrera="+alu.getCarrera().getCod_carrera()+"\n"+
                        "and Fecha_Examen < cast((now() + interval 45 day) as date)\n" +
                        "and Fecha_Examen > cast((now() - interval 45 day) as date)";
            System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            while(rst.next()){
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
        public Vector getFullInscripciones(HashMap parameters) throws Exception{
        Vector<FinalInscripto> vec_FinalesInscriptos = new Vector();
        try{
            System.out.println("entro al collection de finales inscriptos FULL");
                        String materia = (String)parameters.get("materia");
                        String carrera = (String)parameters.get("carrera"); 
                        String turno   = (String)parameters.get("turno"); 
                        //String lectivo = (String)parameters.get("lectivo"); 
                        String fechaexamen = (String)parameters.get("fechaexamen"); 

                        String sql= "SELECT ma.Nombre, nt.Fecha_Examen, nt.Turno, nt.Cod_Materia, nt.Cod_Carrera, nt.Legajo, al.Nombre NombreAlumno, al.Apellido ApellidoAlumno,nt.ModalidadInscripcion ntmi, nt.SemiPresencial ntsp, nt.Fecha_inscripcion ntfi, nt.Nota_Final ntnf,nt.LibroActExamen ntle, nt.FolioActExamen ntfac " +
                        "FROM nota_examen nt, materia ma, examenes ex , alumnos al " +
                        "WHERE nt.Cod_Materia=ma.Cod_Materia " +
                                        
                        "AND (ex.Fecha1 = nt.Fecha_Examen OR ex.Fecha2 = nt.Fecha_Examen) " +
                        "AND nt.Fecha_Examen = '"+fechaexamen+"' " +
                        
                                                "AND nt.Cod_Materia = ex.Cod_Materia " +
                                                "AND nt.Cod_Materia = '"+materia+"' " +
                                        
                                                "AND nt.Cod_Carrera = ex.Cod_Carrera " +
                                                "AND nt.Cod_Carrera = '"+carrera+"' " +
                                        
                                                "AND nt.Turno = ex.Turno " +
                                                "AND nt.Turno = '"+turno+"' " +
                                        
                        "AND nt.Legajo = al.Legajo " +
                        "AND nt.Fecha_Examen < cast((now() + interval 45 day) as date) " +
                        "AND nt.Fecha_Examen > cast((now() - interval 45 day) as date) "
                                                + "GROUP BY nt.Legajo ORDER BY ApellidoAlumno, NombreAlumno";                        
            System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                FinalInscripto fi=new FinalInscripto();
                fi.getMateria().setNombre(rst.getString("nombre"));
                fi.getMateria().setCod_materia(Integer.parseInt(rst.getString("Cod_Materia")));                                
                fi.getCarrera().setCod_carrera(Integer.parseInt(rst.getString("Cod_Carrera")));               
                                
                String turno2="";
                if(rst.getString("Turno").equals("TM")){
                    turno2="Turno Ma&ntildeana";
                }else{
                    turno2="Turno Noche";
                }
                fi.setTurno(turno2);
                fi.setFecha_examen(rst.getDate("Fecha_Examen"));
                fi.setProfesor("estatico");
                                
                                fi.getAlumno().setLegajo(Integer.parseInt(rst.getString("Legajo")));
                fi.getAlumno().setNombre(rst.getString("NombreAlumno"));
                fi.getAlumno().setApellido(rst.getString("ApellidoAlumno"));
                                
                fi.getNotaexamen().setModalidadInscripcion(rst.getString("ntmi"));
                                fi.getNotaexamen().setSemiPresencial(rst.getBoolean("ntsp"));
                fi.getNotaexamen().setFecha_inscripcion(rst.getDate("ntfi"));
                
                                fi.getNotaexamen().setNota_final(rst.getInt("ntnf"));
                                fi.getNotaexamen().setLibroActExamen(rst.getInt("ntle"));
                                fi.getNotaexamen().setFolioActExamen(rst.getInt("ntfac"));
                
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