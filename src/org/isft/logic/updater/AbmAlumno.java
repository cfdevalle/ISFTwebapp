package org.isft.logic.updater;
import org.isft.domain.Alumnos;
import java.util.HashMap;
import org.isft.logic.updater.UpdaterInterface;
import org.isft.logic.updater.UpdaterManager;

/**
 *
 * @author jcafferata
 */
public class AbmAlumno extends UpdaterManager implements UpdaterInterface{

    @Override
    public void insert(HashMap parameters) throws Exception {
        try{
            String sql_insert="INSERT INTO USUARIO (USUARIO, PASSWORD, APELLIDO, NOMBRE) values('"+(String)parameters.get("usuario")+"','"+(String)parameters.get("password")+"', '"+(String)parameters.get("apellido")+"', '"+(String)parameters.get("nombre")+"')";
            //System.out.println("Cadena de insercion: " + sql_insert);
            execute(sql_insert);
        }
        catch(Exception exc){
           throw new Exception(exc.getMessage());
        }       
    }

    @Override
    public void delete(HashMap parameters) throws Exception {
        try{
            String sql_delete="DELETE FROM USUARIO WHERE USUARIO='"+(String)parameters.get("usuario")+"'";
            execute(sql_delete);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }        
    }

    @Override
    public void update(HashMap parameters) throws Exception {
        try{
			String update = "UPDATE...";
			execute(update);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }       
    }
	public void updatePasswordUsuario(Alumnos alumno) throws Exception {
		try{
			String update = "UPDATE alumnos SET pwd =  '"+alumno.getPwd()+"' WHERE legajo = '"+alumno.getLegajo()+"' ";
			execute(update);
		} catch(Exception exc){
			throw new Exception(exc.getMessage());
		}
        
    }
    public void updateAlumno(Alumnos alumno) throws Exception {
		try{
			String sql_update = "UPDATE alumnos "
								+ "SET Nombre =  '"+alumno.getNombre()+"' "
								+ ", Apellido =  '"+alumno.getApellido()+"' "
								+ ", Direccion =  '"+alumno.getDireccion()+"' "
								+ ", Localidad =  '"+alumno.getLocalidad()+"' "
								+ ", Legajo =  '"+alumno.getLegajo()+"' "
								+ ", Sexo =  '"+alumno.getSexo()+"' "
								+ ", CP =  '"+alumno.getCp()+"' "
								+ "WHERE legajo = '"+alumno.getLegajo()+"' ";
			execute(sql_update);
		} catch(Exception exc){
			throw new Exception(exc.getMessage());
		}
    }
}
