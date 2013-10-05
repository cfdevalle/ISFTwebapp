
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

public class CollectionMateriasYaInscriptas extends AccessManager implements AccessInterface {
    
    public Vector select (HashMap param) throws Exception {
        Alumnos usuario = (Alumnos) param.get("usuario");        
        Vector vec_cmpi = new Vector();
        Vector <HashMap> vec_materias = new Vector();
        String accion = (String) param.get("accion");
        
        vec_materias = this.getMateriasYaInscriptas(usuario, param);

        for (int i = 0; i < vec_materias.size(); i++) {
            HashMap paramDatos = vec_materias.get(i);
            DatosGrilla datos = new DatosGrilla();
            
            datos.setCodigo(Integer.parseInt((String)paramDatos.get("Cod_Materia")));
            datos.setMateria((String)paramDatos.get("Nombre"));
            datos.setSituacionAcademica((String)paramDatos.get("SituacionAcademica"));
            datos.setModalidad((String)paramDatos.get("ModalidadInscripcion"), i, accion);
            datos.setTurno((String)paramDatos.get("Turno"));
            datos.setSeleccion((String)paramDatos.get("Seleccion"));
            vec_cmpi.add(datos);
        }

        return vec_cmpi;
    }
    
    public Vector getMateriasYaInscriptas (Alumnos usuario, HashMap param) throws Exception {
        Vector <HashMap> vec_materias = new Vector();
        try {
            String sql = "";
            sql += "SELECT ca.Cod_Materia, ma.Nombre, ca.SituacionAcademica, ca.ModalidadInscripcion, cu.Descripcion, ca.Turno, ca.Cod_Curso ";
            sql += "FROM  cursos_alumnos ca, curso cu,  materia ma ";
            sql += "WHERE ca.Cod_Carrera="+usuario.getCarrera().getCod_carrera()+" ";
            sql += "AND ca.Legajo="+usuario.getLegajo()+" ";
            sql += "AND ca.Cod_Curso=cu.Cod_Curso ";
            sql += "AND ca.Cod_Materia=ma.Cod_Materia ";
            sql += "AND ca.Lectivo="+(String)param.get("anio_actual");
            
            ResultSet rst = execute(sql);
            
            while (rst.next()) {
                HashMap datosGrilla = new HashMap();
                datosGrilla.put("Cod_Materia", String.valueOf(rst.getInt("Cod_Materia")));
                datosGrilla.put("Nombre", rst.getString("Nombre"));
                datosGrilla.put("SituacionAcademica", rst.getString("SituacionAcademica"));
                datosGrilla.put("ModalidadInscripcion", rst.getString("ModalidadInscripcion"));
                datosGrilla.put("Cod_Curso", rst.getString("Cod_Curso"));
                String turno = rst.getString("Turno");
                
                String seleccion="<input type=\"checkbox\" name=\"chk_seleccion\" value=\""+usuario.getCarrera().getCod_carrera()+"-"+(String)datosGrilla.get("Cod_Materia")+"-"+(String)datosGrilla.get("SituacionAcademica")+"-"+usuario.getLegajo()+"-"+(String)param.get("anio_actual")+"-"+(String)datosGrilla.get("ModalidadInscripcion")+"-"+turno+"-"+(String)datosGrilla.get("Cod_Curso")+"\"></input>";
                datosGrilla.put("Seleccion", seleccion);
                
                if (turno.equalsIgnoreCase("M")){
                    turno = " Ma&ntildeana";                    
                }
                else {
                    turno = " Tarde";                    
                }
                datosGrilla.put("Turno", rst.getString("Descripcion")+turno);
                
                vec_materias.add(datosGrilla);
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
}