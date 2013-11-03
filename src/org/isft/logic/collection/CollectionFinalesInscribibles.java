/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
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
import org.isft.domain.FechaFinal;
import org.isft.domain.FinalInscribible;
import org.isft.domain.FinalInscripto;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.AccessInterface;
import org.isft.logic.validator.ValidarSituacionMateria;

/**
 *
 * @author Administrador
 */
public class CollectionFinalesInscribibles extends AccessManager implements AccessInterface {
    public Vector select(HashMap parameters) throws Exception{
        Vector<FinalInscribible> vec_FinalesInscribiles = new Vector();
        try{
            Alumnos alu=(Alumnos) parameters.get("alumno");
            System.out.println("LA CARRERA SELECCIONADA ES: "+alu.getCarrera().getCod_carrera() );
            String sql="select lb.*, mat.Nombre, exa.Fecha1, exa.Fecha2, exa.Turno, ca.ModalidadInscripcion, ca.SituacionAcademica, lb.Cod_Carrera, lb.Legajo, lb.Cod_Materia\n" +
                    "from libro_matriz lb, materia mat, examenes exa, cursos_alumnos ca\n" +
                    "where (lb.Nota_Final<4 or lb.Nota_Final is null)\n" +
                    "and lb.Regularizado=1\n" +
                    "and lb.Legajo="+alu.getLegajo()+"\n" +
                    "and lb.Cod_Carrera="+alu.getCarrera().getCod_carrera()+"\n" +
                    "and lb.Cod_Materia=mat.Cod_Materia\n" +
                    "and exa.Cod_Materia=lb.Cod_Materia\n" +
                    "and exa.Cod_Carrera=lb.Cod_Carrera\n" +
                    "and ca.Cod_Carrera=lb.Cod_Carrera\n" +
                    "and ca.Legajo=lb.Legajo\n" +
                    "and ca.Cod_Materia=lb.Cod_Materia\n" + 
                    "and lb.Fecha_Reg > cast((now() - interval 5 year) as date)\n"+
                    "and exa.Fecha1 < cast((now() + interval 45 day) as date)\n" +
                    "and exa.Fecha1 >= cast((now() - interval 3 day) as date)\n" +
                    "and exa.Fecha2 < cast((now() + interval 45 day) as date)\n" +
                    "and exa.Fecha2 >= cast((now() - interval 3 day) as date) ";
            ResultSet rst = execute(sql); 
			
			
            //OBTENER CANTIDAD DE REGISTROS
            ResultSet cant= execute(sql); 
			
			System.out.println("BEGIN: CollectionFinalesInscribibles");
			System.out.println("query: "+sql);
			System.out.println("Cantidad registros: "+cant.next());
			System.out.println("END: CollectionFinalesInscribibles");
            int aux1,aux2,aux3,cantidad_fechas=0;
            if(cant.next()){
                aux1=cant.getInt("Cod_Materia");
                cant.next();
                aux2=cant.getInt("Cod_Materia");
                cant.next();
                aux3=cant.getInt("Cod_Materia");
                if(aux1==aux2&&aux1==aux3){
                    cantidad_fechas=3;
                }else if(aux1==aux2){
                    cantidad_fechas=2;
                }else{
                    cantidad_fechas=1;
                }
            }
            while(rst.next()){
                boolean inscribible=true;
                ValidarSituacionMateria validarSituacionMateria=new ValidarSituacionMateria();
                // CHEKEO SI SE PUEDE DAR POR CORRELATIVAS FINALES
                inscribible=validarSituacionMateria.isCorrelativasOk(rst);
                //FECHAS
                Vector<FechaFinal> vec_FechasFinal=new Vector();
                for(int i=0;i<cantidad_fechas;i++){
                    if(i==1){rst.next();}
                    if(i==2){rst.next();}
                    FechaFinal ff1=new FechaFinal(rst.getDate("Fecha1"),rst.getString("Turno"));
                    FechaFinal ff2=new FechaFinal(rst.getDate("Fecha2"),rst.getString("Turno")); 
                    if(ff1.getFecha().equals(ff2.getFecha())){
                        vec_FechasFinal.add(ff1);
                    }else{
                        vec_FechasFinal.add(ff1);
                        vec_FechasFinal.add(ff2);
                    }
                }
                // EL RESTO
                FinalInscribible fi=new FinalInscribible();
                fi.getMateria().setNombre(rst.getString("Nombre"));
                fi.getMateria().setCod_materia(rst.getInt("Cod_Materia"));
                fi.getCarrera().setCod_carrera(rst.getInt("Cod_Carrera"));
                fi.getAlumno().setLegajo(rst.getInt("Legajo"));
                fi.getSituacion_materia().setModalidadInscripcion(rst.getString("ModalidadInscripcion"));
                fi.getSituacion_materia().setSituacionAcademica(rst.getString("SituacionAcademica"));
                fi.setFechas(vec_FechasFinal);
                //AGREGAR SI ES UPDATE O INSERT
                HashMap paramValidacion=new HashMap();
                paramValidacion.put("cod_carrera", fi.getCarrera().getCod_carrera());
                paramValidacion.put("cod_materia", fi.getMateria().getCod_materia());
                paramValidacion.put("legajo", fi.getAlumno().getLegajo());
                if(inscribible){
                    fi.setAccion(validarSituacionMateria.isInscripto(paramValidacion).equals("")?"A":"U");
                    vec_FinalesInscribiles.add(fi);
                }
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
        return vec_FinalesInscribiles;
    }
}
