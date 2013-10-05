
package org.isft.logic.helper.sim;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.AccessInterface;
import org.isft.domain.Alumnos;
import org.isft.domain.Materia;

/**
 * @author TEAM SIM
 */

public class CollectionMateriasParaGrillas extends AccessManager implements AccessInterface {
    private int id = 0;
    private HashMap hs_param = new HashMap();
    
    public Vector select (HashMap param) throws Exception {
        Alumnos usuario = (Alumnos) param.get("usuario");        
        Vector vec_cmpi = new Vector();
        Vector <Materia> vec_materias = new Vector();
        String accion = (String) param.get("accion");
        
        if (accion.equalsIgnoreCase("inscribir")) {
            vec_materias = this.getMateriasNoRegularizadas(usuario, param);
        }
        else if (accion.equalsIgnoreCase("eliminar")) {
            vec_materias = this.getMateriasYaInscriptas(usuario, param);            
        }
        else if (accion.equalsIgnoreCase("comprobante")) {
            vec_materias = this.getMateriasYaInscriptas(usuario, param);            
        }

        for (int i = 0; i < vec_materias.size(); i++) {
            Materia materia = vec_materias.get(i);

            int ccm = this.cantidadCorrelativaMateria(usuario, materia);
            int ccmr = this.cantidadCorrelativaMateriaRegularizada(usuario, materia);
            if (ccm == ccmr) {
                if (materia.getCod_materia() > 300) {
                    int cmp = this.cantidadMateriaPrimero(usuario, materia);
                    int cmpfa = this.cantidadMateriaPrimeroFinalAprobado(usuario, materia);
                    if (cmp == cmpfa) {
                        DatosGrilla datos = new DatosGrilla();
                        int aux=this.getId();
                        datos.setCodigo(materia.getCod_materia());
                        datos.setMateria(materia.getNombre());
                        String situacioAcademica = this.getSituacionAcademica(usuario, materia, param);
                        datos.setSituacionAcademica(situacioAcademica);
                        datos.setModalidad(this.getModalidadInscripcion(usuario, materia, param), aux, accion);
                        datos.setTurno(this.getTurno(usuario, materia, param, aux));
                        datos.setSeleccion(this.getSeleccion(usuario, materia, situacioAcademica, param, accion));
                        vec_cmpi.add(datos);
                        aux++;
                        this.setId(aux);
                    } else {
                        break;
                    }
                } else {
                    DatosGrilla datos = new DatosGrilla();
                    int aux=this.getId();
                    datos.setCodigo(materia.getCod_materia());
                    datos.setMateria(materia.getNombre());
                    String situacioAcademica = this.getSituacionAcademica(usuario, materia, param);
                    datos.setSituacionAcademica(situacioAcademica);
                    datos.setModalidad(this.getModalidadInscripcion(usuario, materia, param), aux, accion);
                    datos.setTurno(this.getTurno(usuario, materia, param, aux));
                    datos.setSeleccion(this.getSeleccion(usuario, materia, situacioAcademica, param, accion));
                    vec_cmpi.add(datos);
                    aux++;
                    this.setId(aux);
                }
            }
        }

        return vec_cmpi;
    }
    
    public Vector getMateriasNoRegularizadas (Alumnos usuario, HashMap param) throws Exception {
        Vector <Materia> vec_materias = new Vector();
        try {
            String sql = "";
            sql += "SELECT lm.cod_materia, ma.nombre, ma.modalidadinscripcion ";
            sql += "FROM libro_matriz lm, materia ma ";
            sql += "WHERE lm.cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND lm.regularizado=false ";
            sql += "AND lm.nota_final IS null ";
            sql += "AND lm.cod_materia=ma.cod_materia ";
            sql += "AND lm.cod_materia ";
            sql += "NOT IN ( ";
            sql += "SELECT cod_materia ";
            sql += "FROM cursos_alumnos ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND legajo="+usuario.getLegajo()+" ";
            sql += "AND lectivo="+(String)param.get("anio_actual")+" ";
            sql += ")";
            
            ResultSet rst = execute(sql);
            
            while (rst.next()) {
                Materia materia = new Materia();
                materia.setCod_materia(rst.getInt("Cod_Materia"));
                materia.setNombre(rst.getString("Nombre"));
                materia.setModalidadCursada(rst.getString("ModalidadInscripcion"));
                vec_materias.add(materia);
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return vec_materias;
    }
    
    public Vector getMateriasYaInscriptas (Alumnos usuario, HashMap param) throws Exception {
        Vector <Materia> vec_materias = new Vector();
        try {
            String sql = "";
            sql += "SELECT lm.cod_materia, ma.nombre, ma.modalidadinscripcion ";
            sql += "FROM libro_matriz lm, materia ma ";
            sql += "WHERE lm.cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND lm.legajo="+usuario.getLegajo()+" ";
            sql += "AND lm.regularizado=false ";
            sql += "AND lm.nota_final IS null ";
            sql += "AND lm.cod_materia=ma.cod_materia ";
            sql += "AND lm.cod_materia ";
            sql += "IN ( ";
            sql += "SELECT cod_materia ";
            sql += "FROM cursos_alumnos ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND legajo="+usuario.getLegajo()+" ";
            sql += "AND lectivo="+(String)param.get("anio_actual")+" ";
            sql += ")";
            
            ResultSet rst = execute(sql);
            
            while (rst.next()) {
                Materia materia = new Materia();
                materia.setCod_materia(rst.getInt("Cod_Materia"));
                materia.setNombre(rst.getString("Nombre"));
                materia.setModalidadCursada(rst.getString("ModalidadInscripcion"));
                vec_materias.add(materia);
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return vec_materias;
    }
    
    public int cantidadCorrelativaMateria (Alumnos usuario, Materia materia) throws Exception {
        int cantidad=0;
        try {
            String sql = "";
            sql += "SELECT COUNT(cod_correlativa) AS cantidad_correlativas ";
            sql += "FROM correlativa co ";
            sql += "WHERE co.cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND co.cod_materia="+materia.getCod_materia();

            ResultSet rst = execute(sql);
            while (rst.next()) {
                cantidad=rst.getInt("cantidad_correlativas");
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return cantidad;
    }
    
    public int cantidadCorrelativaMateriaRegularizada (Alumnos usuario, Materia materia) throws Exception {
        int cantidad=0;
        try {
            String sql = "";
            sql += "SELECT COUNT(cod_correlativa) AS cantidad_correlativas ";
            sql += "FROM correlativa co, libro_matriz lm ";
            sql += "WHERE co.cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND co.cod_materia="+materia.getCod_materia()+" ";
            sql += "AND lm.legajo="+usuario.getLegajo()+" ";
            sql += "AND lm.cod_carrera=co.cod_carrera ";
            sql += "AND lm.cod_materia=co.cod_correlativa ";
            sql += "AND lm.regularizado=true";

            ResultSet rst = execute(sql);
            while (rst.next()) {
                cantidad=rst.getInt("cantidad_correlativas");
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return cantidad;
    }
    
    public int cantidadMateriaPrimero (Alumnos usuario, Materia materia) throws Exception {
        int cantidad=0;
        try {
            String sql = "";
            sql += "SELECT COUNT(*) AS cantidad_materias ";
            sql += "FROM libro_matriz ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND cod_materia > 100 AND cod_materia <200";

            ResultSet rst = execute(sql);
            while (rst.next()) {
                cantidad=rst.getInt("cantidad_materias");
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return cantidad;
    }
    
    public int cantidadMateriaPrimeroFinalAprobado (Alumnos usuario, Materia materia) throws Exception {
        int cantidad=0;
        try {
            String sql = "";
            sql += "SELECT count(*) AS cantidad_materias_final_aprobado ";
            sql += "FROM libro_matriz ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND legajo ="+usuario.getLegajo()+" ";
            sql += "AND regularizado = true ";
            sql += "AND nota_final > 4 ";
            sql += "AND cod_materia > 100 and cod_materia <200";

            ResultSet rst = execute(sql);
            while (rst.next()) {
                cantidad=rst.getInt("cantidad_materias_final_aprobado");
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return cantidad;
    }
    
    public String getSituacionAcademica (Alumnos usuario, Materia materia, HashMap param) throws Exception {
        String condicion="";
        int veces_cursadas=0;
        try {
            String sql = "";
            sql += "SELECT COUNT(lectivo) AS cantidad_de_veces_que_curso ";
            sql += "FROM cursos_alumnos ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND legajo="+usuario.getLegajo()+" ";
            sql += "AND cod_materia="+materia.getCod_materia()+" ";
            sql += "AND lectivo < "+(String)param.get("anio_actual");

            ResultSet rst = execute(sql);
            while (rst.next()) {
                veces_cursadas=rst.getInt("cantidad_de_veces_que_curso");
            }
            
            if (veces_cursadas == 0){
                condicion="CO";
                return condicion;                
            }
            else if (veces_cursadas > 5){
                condicion="AA";
                return condicion;                
            }
            else {
                condicion="RE";
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return condicion;        
    }
    
    public String getModalidadInscripcion (Alumnos usuario, Materia materia, HashMap param) throws Exception {
        String accion = (String) param.get("accion");
        String modalidad="";
        String modo_cursada="";
        
        try {
            if (accion.equalsIgnoreCase("eliminar") || accion.equalsIgnoreCase("comprobante")) {
                String sql="";
                sql += "SELECT ModalidadInscripcion ";
                sql += "FROM  cursos_alumnos ";
                sql += "WHERE Cod_Carrera="+usuario.getCarrera().getCod_carrera()+" ";
                sql += "AND Legajo="+usuario.getLegajo()+" ";
                sql += "AND Cod_Materia="+materia.getCod_materia()+" ";
                sql += "AND Lectivo="+(String)param.get("anio_actual");
                
                ResultSet rst = execute(sql);
                while (rst.next()) {
                    modo_cursada = rst.getString("ModalidadInscripcion");
                    this.hs_param.put("ModalidadInscripcion", modo_cursada);
                }
                return modo_cursada;
            }
            
            String sql = "";
            sql += "SELECT ModalidadInscripcion ";
            sql += "FROM materia ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND cod_materia="+materia.getCod_materia();

            ResultSet rst = execute(sql);
            while (rst.next()) {
                modo_cursada=rst.getString("ModalidadInscripcion");
            }
            
            if (modo_cursada.equalsIgnoreCase("LI")){
                modalidad="LI";
                return modalidad;             
            }
            else {
                modalidad="PR";
            }
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return modalidad;        
    }
    
    public String getTurno (Alumnos usuario, Materia materia, HashMap param, int aux) throws Exception {
        String accion = (String) param.get("accion");
        String turno="<select id=\"cbo_turno_"+ aux +"\">";     
        String codigo_materia=String.valueOf(materia.getCod_materia());
        codigo_materia=codigo_materia.substring(0, 2);
        
        try {
            if (accion.equalsIgnoreCase("eliminar") || accion.equalsIgnoreCase("comprobante")) {
                turno = "";
                String sql="";
                sql += "SELECT ca.Turno, ca.Cod_Curso, cu.Descripcion ";
                sql += "FROM  cursos_alumnos ca, curso cu ";
                sql += "WHERE ca.Cod_Carrera="+usuario.getCarrera().getCod_carrera()+" ";
                sql += "AND ca.Legajo="+usuario.getLegajo()+" ";
                sql += "AND ca.Cod_Materia="+materia.getCod_materia()+" ";
                sql += "AND ca.Cod_Curso=cu.Cod_Curso ";
                sql += "AND ca.Lectivo="+(String)param.get("anio_actual");
                
                ResultSet rst = execute(sql);
                while (rst.next()) {
                    String turn = rst.getString("Turno");
                    int Cod_Curso=rst.getInt("Cod_Curso");
                    String Descripcion=rst.getString("Descripcion");
                    
                    if (turn.equalsIgnoreCase("M")) {
                        turno += Descripcion + " Ma&ntildeana";
                        this.hs_param.put("Turno", turn);
                        this.hs_param.put("Cod_Curso", String.valueOf(Cod_Curso));
                    }

                    if (turn.equalsIgnoreCase("T")) {
                        turno += Descripcion + " Tarde";
                        this.hs_param.put("Turno", turn);
                        this.hs_param.put("Cod_Curso", String.valueOf(Cod_Curso));
                    }
                }
                return turno;
            }
            
            String sql = "";
            sql += "SELECT Turno, Cod_Curso, Descripcion ";
            sql += "FROM curso ";
            sql += "WHERE cod_carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND cod_curso >= "+codigo_materia+" ";
            sql += "AND cod_curso <= ("+codigo_materia+"+10)";

            ResultSet rst = execute(sql);
            
            while (rst.next()) {
                String turn=rst.getString("turno");
                int Cod_Curso=rst.getInt("Cod_Curso");
                String Descripcion=rst.getString("Descripcion");
                
                if (turn.equalsIgnoreCase("M")){
                    turno += "<option value=\""+turn+"-"+Cod_Curso+"\">"+Descripcion+" Ma&ntildeana</option>";                  
                }
                
                if (turn.equalsIgnoreCase("T")){
                    turno += "<option value=\""+turn+"-"+Cod_Curso+"\">"+Descripcion+" Tarde</option>";                    
                }               
            }
            turno +="</Select>";
                
        } catch (Exception exc) {
            throw new Exception(exc);
        } finally {
            try {
                close_connection();
            } catch (Exception exc) {
                throw new Exception(exc.getMessage());
            }
        }
        return turno;        
    }
    
    public String getSeleccion(Alumnos usuario, Materia materia, String situacionAcademica, HashMap param, String accion) {
        if (accion.equalsIgnoreCase("eliminar") || accion.equalsIgnoreCase("comprobante")) {
            String seleccion="<input type=\"checkbox\" name=\"chk_seleccion\" value=\""+usuario.getCarrera().getCod_carrera()+"-"+materia.getCod_materia()+"-"+situacionAcademica+"-"+usuario.getLegajo()+"-"+(String)param.get("anio_actual")+"-"+(String)this.hs_param.get("ModalidadInscripcion")+"-"+(String)this.hs_param.get("Turno")+"-"+(String)this.hs_param.get("Cod_Curso")+"\"></input>";
            return seleccion;
        }
        String seleccion="<input type=\"checkbox\" name=\"chk_seleccion\" value=\""+usuario.getCarrera().getCod_carrera()+"-"+materia.getCod_materia()+"-"+situacionAcademica+"-"+usuario.getLegajo()+"-"+(String)param.get("anio_actual")+"\"></input>";
        
        return seleccion;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}