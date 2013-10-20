package org.isft.logic.updater;
import java.util.HashMap;
import org.isft.logic.updater.UpdaterInterface;
import org.isft.logic.updater.UpdaterManager;

/**
 *
 * @author jcafferata
 */
public class AbmNotaExamen extends UpdaterManager implements UpdaterInterface{

    @Override
    public void insert(HashMap parameters) throws Exception {
        try{
            String sql_insert="INSERT INTO USUARIO (USUARIO, PASSWORD, APELLIDO, NOMBRE) values('"+(String)parameters.get("usuario")+"','"+(String)parameters.get("password")+"', '"+(String)parameters.get("apellido")+"', '"+(String)parameters.get("nombre")+"')";
            System.out.println("Cadena de insercion: " + sql_insert);
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
			String carrera = (String) parameters.get("carrera");
			String materia = (String) parameters.get("materia");
			
			String fecha_examen = (String) parameters.get("fecha_examen");			
			String legajo  = (String) parameters.get("legajo");
			String calificacion  = (String) parameters.get("calificacion");
			String libro  = (String) parameters.get("libro");
			String folio  = (String) parameters.get("folio");
						
			int Asistencia = 0;
			Integer nota_final = Integer.parseInt(calificacion);
			if (calificacion == null || calificacion.equals("")) {
				nota_final = 0;
				Asistencia = 0;
			}else{
				if(nota_final>0)
					Asistencia = 1;
				else
					Asistencia = 0;
			}
			
			String update = "UPDATE nota_examen SET  "+ 
						
							"Nota_Final =  "+nota_final+", " +
							"LibroActExamen =  "+libro+", " +
							"FolioActExamen =  "+folio+", " +
							"Asistencia =  "+Asistencia+" " +
					
							"WHERE  `Fecha_Examen` =  '"+fecha_examen+"' "+
							"AND  `Cod_Materia` = '"+materia+"' "+
							"AND  `Cod_Carrera` = '"+carrera+"' "+
							"AND  `Legajo` = '"+legajo+"' ";
			System.out.println("up nota examen: "+update);
			execute(update);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }       
    }
	
}
