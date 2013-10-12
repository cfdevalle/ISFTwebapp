package org.isft.logic.validator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.domain.FinalInscribible;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.collection.CollectionFinalesInscribibles;

public class ValidarSituacionMateria extends AccessManager {
	 
	 public boolean isInscripto(HashMap param) throws Exception{
		boolean inscripto=false;
                String accion="select Cod_Carrera from nota_examen";
                accion+=" where Cod_Carrera="+param.get("cod_carrera");
                accion+=" and Legajo="+param.get("legajo");
                accion+=" and Cod_Materia="+param.get("cod_materia");
                            try{
                                    ResultSet acc=execute(accion);
                                    System.out.println("accion : " + accion);
                                    while(acc.next()){
                                         System.out.println("entro al while: " + acc.getString("cod_carrera"));
                                         inscripto=true;
                                    }
                            } catch(Exception exc){
                                 throw new Exception(exc.getMessage());
                            }
                 return inscripto;
	 }

        public boolean isCorrelativasOk(ResultSet rst) throws Exception{
            boolean inscribible=true;
            String correlativa="select * from correlativa where Cod_materia="+rst.getInt("Cod_Materia")+"";
            ResultSet cor= execute(correlativa);
            if(rst.getObject("Nota_Final")==null){
                while(cor.next()){
                    String nfc="select Nota_Final from libro_matriz where Cod_Materia="+cor.getInt("Cod_Correlativa")+"";
                    ResultSet nota_correlativa=execute(nfc);
                    nota_correlativa.next();
                    if(nota_correlativa.getInt("Nota_Final")<4||nota_correlativa.getObject("Nota_Final")==null){
                        inscribible=false;
                    }else if(nota_correlativa.getInt("Nota_Final")>3){
                        inscribible=true;
                    }       
                }
            }else if(rst.getObject("Nota_Final")!=null){
                inscribible=true;   
            }
            return inscribible;
        } 

    public boolean validarAlta(HashMap hash) throws Exception{
        boolean materia_valida=true;
        try{
            if(isInscribible(hash)){
                //NO HACE NADA
            }else{
                //SI NO ES INSCRIBIBLE 
                materia_valida=false;
            }
            if(isInscripto(hash)){
            //EL SI ESTA INSCRIPTO ES TRUE QUIERE DECIR QUE NO PUEDE ANOTARSE DEVUELTA OSEA FALSE
                materia_valida=false;
            }
            if(!fechaFinalValida(hash)){
                //COMO PREGUNTO SI ES VALIDA Y NO INVALIDA TENGO Q PONERLE EL ! PARA CAMBIERLE EL SENTIDO
                materia_valida=false;
            }
            if(isOtraMateriaInscripta(hash)){
                //DEVUELVE TRUE CUANDO HAY OTRA INSCRIPTA ENTONCES MATERIA_VALIDA=FALSE PQ NO PODES INSCRIBIRTE 2 MATERIAS EL MISMO DIA EN EL MISMO TURNO
                materia_valida=false;
            }
            if(isModalidadCorrecta(hash)){
                // NO HACE NADA
            }else{
                materia_valida=false;
            }
            
        }catch(Exception exe){
            System.out.println("aca tira el no encontrado");
        }
        return materia_valida;
    }
    
    public boolean fechaFinalValida(HashMap hashfecha)throws Exception{
        boolean fecha_valida=true;
        try{
            String sql="select *\n" +
                    "from examenes\n" +
                    "where Fecha1='"+hashfecha.get("fecha_final")+"' \n" +
                    "and Cod_Materia="+hashfecha.get("cod_materia")+"\n" +
                    "and Turno='"+hashfecha.get("turno")+"'\n" +
                    "and Cod_Carrera="+hashfecha.get("cod_carrera")+"\n" +
                    "or Fecha2='"+hashfecha.get("fecha_final")+"'";
            ResultSet rst=execute(sql);
            rst.next();
            if(rst.getObject("Fecha1")==null){
                fecha_valida=false;
            }
        }catch(Exception exe){
            System.out.println("FECHA INVALIDA");
            fecha_valida=false;
        }
        return fecha_valida; 
    }

    private boolean isOtraMateriaInscripta(HashMap hashInscripcion)throws Exception {
        boolean inscribible=true;
        try{
            String sql="select * \n" +
                        "from nota_examen\n" +
                        "where Fecha_examen='"+hashInscripcion.get("fecha_final")+"'\n" +
                        "and Turno='"+hashInscripcion.get("turno")+"'\n" +
                        "and Legajo="+hashInscripcion.get("legajo")+"";
            ResultSet rst=execute(sql);
            rst.next();
            if(rst.getObject("Fecha_examen")==null){
                inscribible=false;
            }
            
        }catch(Exception exe){
            System.out.println("FECHA INVALIDA");
            inscribible=false;
        }
        return inscribible;
    }

    private boolean isInscribible(HashMap hashInscripcion)throws Exception {
        boolean inscribible=false;
        try{
            String sql="select lb.*, mat.Nombre, exa.Fecha1, exa.Fecha2, exa.Turno, ca.ModalidadInscripcion, ca.SituacionAcademica\n" +
                    "from libro_matriz lb, materia mat, examenes exa, cursos_alumnos ca\n" +
                    "where (lb.Nota_Final<4 or lb.Nota_Final is null)\n" +
                    "and lb.Regularizado=TRUE\n" +
                    "and lb.Legajo="+hashInscripcion.get("legajo")+"\n" +
                    "and lb.Cod_Carrera="+hashInscripcion.get("cod_carrera")+"\n" +
                    "and lb.Cod_Materia=mat.Cod_Materia\n" +
                    "and exa.Cod_Materia=lb.Cod_Materia\n" +
                    "and exa.Cod_Carrera=lb.Cod_Carrera\n" +
                    "and ca.Cod_Carrera=lb.Cod_Carrera\n" +
                    "and ca.Legajo=lb.Legajo\n" +
                    "and ca.Cod_Materia=lb.Cod_Materia\n" + 
                    "and lb.Fecha_Reg > cast((now() - interval 5 year) as date)\n"+
                    "order by lb.Cod_Materia";
            ResultSet rst = execute(sql); 
            while(rst.next()){
                if(isCorrelativasOk(rst)){
                    //PROBE MUCHISIMAS COMPARACIONES Y CAST Y ESTA ES LA UNICA Q FUNCIONO
                    if(Integer.toString(rst.getInt("Cod_Materia")).equals(hashInscripcion.get("cod_materia"))){
                        inscribible=true;
                    }
                    //SE HACE 2 VECES LO MISMO POR QUE EL SQL TRAE 2 REGISTRO CASI IDENTICOS, POR CULPA DE TURNO
                    rst.next();
                    if(Integer.toString(rst.getInt("Cod_Materia")).equals(hashInscripcion.get("cod_materia"))){
                        inscribible=true;
                    }
                }
             } 
        }catch(Exception exe){
            inscribible=false;
        }
        System.out.println("------------> EL ESTADO DE INSCRIBIBLE ES: "+ inscribible);
        return inscribible;
    }

    private boolean isModalidadCorrecta(HashMap hashModalidad)throws Exception {
        boolean estado=true;
        try{
            String sql="select ModalidadInscripcion\n" +
                    "from cursos_alumnos\n" +
                    "where Legajo=6030\n" +
                    "and Cod_Carrera=1\n" +
                    "and Cod_Materia=101";
            ResultSet rst=execute(sql);
            rst.next();
            if(rst.getString("ModalidadInscripcion").equals(hashModalidad.get("modadlidad_inscripcion"))){
                estado=true;
            }else{
                estado=false;
            }
            
        }catch(Exception exe){
            //lalala
        }
        return estado;
    }
    
    
}