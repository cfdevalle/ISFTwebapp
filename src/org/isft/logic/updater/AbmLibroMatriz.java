package org.isft.logic.updater;
import org.isft.domain.Alumnos;
import java.util.HashMap;
import org.isft.logic.updater.UpdaterInterface;
import org.isft.logic.updater.UpdaterManager;

/**
 *
 * @author jcafferata
 */
public class AbmLibroMatriz extends UpdaterManager implements UpdaterInterface{

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
			
			
			String update = "UPDATE  `libro_matriz` SET  "+
							"`Nota_Final` =  '"+calificacion+"', " +
							"`Fecha_Final` =  '"+fecha_examen+"', " +
							"`LibroActExamen` =  '"+libro+"', " +
							"`FolioActExamen` =  '"+folio+"' " +
							"WHERE  `Cod_Materia` ='"+materia+"' "+
							"AND  `Cod_Carrera` ='"+carrera+"' "+
							"AND  `Legajo` ='"+legajo+"'; ";
			System.out.println("up libro matriz: "+update);
			execute(update);
        }
        catch(Exception exc){
        		throw new Exception(exc.getMessage());
        }       
    }
	
}
