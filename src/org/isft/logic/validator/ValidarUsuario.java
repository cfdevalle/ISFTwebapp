/*
 *
 * @author SEBASTIAN
 */
package org.isft.logic.validator;

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
import org.isft.domain.Carrera;
//import org.isft.domain.Materia;


public class ValidarUsuario extends AccessManager implements AccessInterface {
    public ValidarUsuario(){};
	 public Vector select (HashMap param) throws Exception {
        Vector vec_alumno = new Vector();

		return vec_alumno;
	 }
    public boolean isUsuarioValido(Alumnos alumno) throws Exception {
		boolean result = false;
        try {
            String sql = "";
            
            sql += "SELECT * FROM alumnos WHERE legajo='"+alumno.getLegajo()+"' AND pwd='"+alumno.getPwd()+"'";
            ResultSet rst = execute(sql);
            
            while(rst.next()){
                result = true;
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
		return result;
    }
  
    public boolean isUsuarioValidoByLegajo(Alumnos alumno) throws Exception {
		boolean result = false;
        try {
            String sql = "";
            
            sql += "SELECT * FROM alumnos WHERE legajo = '"+alumno.getLegajo()+"' ";
            ResultSet rst = execute(sql);
            
            while(rst.next()){
                result = true;
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
		return result;
    }
    public Alumnos getFullUsuario(Alumnos alumno) throws Exception {
		Alumnos alumnoResult=new Alumnos();
		Vector carreras= new Vector();
        try {
            String sql= "SELECT Apellido, Legajo, pwd, c.Nombre AS NombreCarrera, a.Nombre AS NombreAlumno, c.Cod_carrera AS cc, Sexo, Localidad, Direccion, Lectivo, CP\n" +
						"FROM alumnos a, carrera c\n" +
						"WHERE a.Cod_Carrera = c.Cod_Carrera\n" +
						"AND Legajo ="+alumno.getLegajo()+"\n" +
						"AND pwd =  '"+alumno.getPwd()+"'";
            
			System.out.println("sql Login: "+sql);
            ResultSet rst = execute(sql);
            
            while(rst.next()){
				alumnoResult.setLegajo(rst.getInt("Legajo"));
				alumnoResult.setNombre(rst.getString("NombreAlumno"));
				alumnoResult.setApellido(rst.getString("Apellido"));
				alumnoResult.setPwd(rst.getString("pwd"));
				alumnoResult.setSexo(rst.getString("Sexo"));
				alumnoResult.setDireccion(rst.getString("Direccion"));
				alumnoResult.setLocalidad(rst.getString("Localidad"));
				alumnoResult.setCp(rst.getString("CP"));
				alumnoResult.setLectivo(rst.getString("Lectivo"));

				Carrera carrera=new Carrera();
				carrera.setCod_carrera(rst.getInt("cc"));
				carrera.setNombre(rst.getString("NombreCarrera"));

				carreras.add(carrera);
				
				alumnoResult.setCarreras(carreras);
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
		return alumnoResult;
    }
   
}
