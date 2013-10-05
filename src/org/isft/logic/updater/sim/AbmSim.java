package org.isft.logic.updater.sim;

import java.util.HashMap;
import org.isft.logic.updater.UpdaterInterface;
import org.isft.logic.updater.UpdaterManager;

/**
 * @author TEAM SIM
 */
public class AbmSim extends UpdaterManager implements UpdaterInterface{

    public void insert(HashMap param) throws Exception {
        try {           
            String sql_insert = "";
            sql_insert += "INSERT INTO cursos_alumnos (Cod_Carrera, Cod_Materia, SituacionAcademica, Legajo, ModalidadInscripcion, Turno, Lectivo, Cod_Curso) ";
            sql_insert += "VALUES ('" + (String) param.get("cod_carrera") + "','" + (String) param.get("cod_materia") + "', '" + (String) param.get("situacionAcademica") + "', '" + (String) param.get("legajo") + "', '" + (String) param.get("modalidadInscripcion") + "', '" + (String) param.get("turno") + "', '" + (String) param.get("lectivo") + "', '" + (String) param.get("Cod_Curso") + "')";
            
            execute(sql_insert);
            
        } catch (Exception exc) {
            throw new Exception(exc.getMessage());
        }
    }

    public void delete(HashMap param) throws Exception {
        try {           
            String sql_delete = "";
            sql_delete += "DELETE FROM cursos_alumnos WHERE "
                        + "ModalidadInscripcion= '" + (String) param.get("modalidadInscripcion") + "' "
                        + "AND Turno= '" + (String) param.get("turno") + "' "
                        + "AND SituacionAcademica= '" + (String) param.get("situacionAcademica") + "' "
                        + "AND Cod_Materia= '" + (String) param.get("cod_materia") + "' "
                        + "AND Cod_Carrera= '" + (String) param.get("cod_carrera") + "' "
                        + "AND Legajo= '" + (String) param.get("legajo") + "' "
                        + "AND Cod_Curso= '" + (String) param.get("Cod_Curso") + "' "
                        + "AND Lectivo= '" + (String) param.get("lectivo") + "' ";

            execute(sql_delete);
            
        } catch (Exception exc) {
            throw new Exception(exc.getMessage());
        }
    }

    public void update(HashMap param) throws Exception {
        try {
            String sql_update = "UPDATE...";
            execute(sql_update);
        } catch (Exception exc) {
            throw new Exception(exc.getMessage());
        }
    }
}
