package org.isft.logic.validator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.domain.FinalInscribible;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.collection.CollectionFinalesInscribibles;

public class ValidarSituacionMateria extends AccessManager {
	 
	 public String isInscripto(HashMap param) throws Exception{
		String inscripto="La materia esta inscripta";
                String accion="select Cod_Carrera from nota_examen";
                accion+=" where Cod_Carrera="+param.get("cod_carrera");
                accion+=" and Legajo="+param.get("legajo");
                accion+=" and Cod_Materia="+param.get("cod_materia");
                            try{
                                ResultSet acc=execute(accion);
                                if(acc.last()){

                                }else{
                                    inscripto="";
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

    public String validarAlta(HashMap hashAlta) throws Exception{
        String materia_valida="";
        if(isInscribible(hashAlta).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ES INSCRIBIBLE
        }else{
        //SI NO 
            materia_valida=isInscribible(hashAlta);
            return materia_valida;
        }
        if(!isInscripto(hashAlta).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ESTA INSCRIPTO
            materia_valida=isInscripto(hashAlta);
            return materia_valida;
        }
        if(!fechaFinalValida(hashAlta).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ES VALIDA
            materia_valida=fechaFinalValida(hashAlta);
            return materia_valida;
        }
        if(!isOtraMateriaInscripta(hashAlta).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE HAY OTRA MATERIA INSCRIPTA EN EL MISMO DIA Y TURNO
            materia_valida=isOtraMateriaInscripta(hashAlta);
            return materia_valida;
        }
        if(isModalidadCorrecta(hashAlta).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE LA MODALIDAD ES CORRECTA
        }else{
            materia_valida=isModalidadCorrecta(hashAlta);
            return materia_valida;
        }
        return "";
    }
    
    public String fechaFinalValida(HashMap hashfecha)throws Exception{
        String sql="select *\n" +
                "from examenes\n" +
                "where (Fecha1='"+hashfecha.get("fecha_final")+"'" +
                "or Fecha2='"+hashfecha.get("fecha_final")+"')\n "+
                "and Cod_Materia="+hashfecha.get("cod_materia")+"\n" +
                "and Turno='"+hashfecha.get("turno")+"'\n" +
                "and Cod_Carrera="+hashfecha.get("cod_carrera");
        ResultSet rst1=execute(sql);
        if(!rst1.last()){
            return "La fecha no es valida";
        }
        return "";  
    }

    private String isOtraMateriaInscripta(HashMap hashInscripcion)throws Exception {
        String sql="select * \n" +
                    "from nota_examen\n" +
                    "where Fecha_examen='"+hashInscripcion.get("fecha_final")+"'\n" +
                    "and Turno='"+hashInscripcion.get("turno")+"'\n" +
                    "and Legajo="+hashInscripcion.get("legajo")+"";
        ResultSet rst1=execute(sql);
        if(rst1.last()){
                return "Hay otra materia Inscripta";
        }else{
            return "";
        }
    }

    private String isInscribible(HashMap hashInscripcion)throws Exception {
        String inscribible="La materia no es inscribible";
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
                    inscribible="";
                }
                //SE HACE 2 VECES LO MISMO POR QUE EL SQL TRAE 2 REGISTRO CASI IDENTICOS, POR CULPA DE TURNO
                rst.next();
                if(Integer.toString(rst.getInt("Cod_Materia")).equals(hashInscripcion.get("cod_materia"))){
                    inscribible="";
                }
            }
         } 
        return inscribible;
    }

    private String isModalidadCorrecta(HashMap hashModalidad)throws Exception {
        String estado="";
        String sql="select ModalidadInscripcion\n" +
                "from cursos_alumnos\n" +
                "where Legajo="+hashModalidad.get("legajo")+"\n" +
                "and Cod_Carrera="+hashModalidad.get("cod_carrera")+"\n" +
                "and Cod_Materia="+hashModalidad.get("cod_materia")+"";
        ResultSet rst=execute(sql);
        rst.next();
        System.out.println(rst.getString("ModalidadInscripcion"));
        System.out.println(hashModalidad.get("modadlidad_inscripcion"));
        if(rst.getString("ModalidadInscripcion").equals(hashModalidad.get("modadlidad_inscripcion"))){
            estado="";
        }else{
            estado="La modalidad de inscripcion es incorrecta";
        }
        return estado;
    }

    public String validarUpdate(HashMap hashUpdate)throws Exception  {
        String materia_valida="";
        if(isInscribible(hashUpdate).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ES INSCRIBIBLE
        }else{
        //SI NO 
            materia_valida=isInscribible(hashUpdate);
            return materia_valida;
        }
        if(isInscripto(hashUpdate).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ESTA INSCRIPTO 
            materia_valida="La materia no esta inscripta";
            return materia_valida;
        }
        if(!fechaFinalValida(hashUpdate).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE ES VALIDA
            materia_valida=fechaFinalValida(hashUpdate);
            return materia_valida;
        }
        if(!isOtraMateriaInscripta(hashUpdate).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE HAY OTRA MATERIA INSCRIPTA EN EL MISMO DIA Y TURNO
            materia_valida=isOtraMateriaInscripta(hashUpdate);
            return materia_valida;
        }      
        if(isModalidadCorrecta(hashUpdate).equals("")){
        //SI DEVUELVE "" QUIERE DECIR QUE LA MODALIDAD ES CORRECTA
        }else{
            materia_valida=isModalidadCorrecta(hashUpdate);
            return materia_valida;
        }
        return "";
    }

    public String validarBaja(HashMap hashBaja) throws Exception {
        String materia_valida="";
        if(isInscripto(hashBaja).equals("")){
            materia_valida="La materia no esta Inscripta";
            return materia_valida;
        }
        return "";
    }

}