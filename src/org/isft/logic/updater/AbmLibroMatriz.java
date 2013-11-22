package org.isft.logic.updater;
import org.isft.domain.Alumnos;
import java.util.HashMap;
import org.isft.domain.helper.FechaPagSql;
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
	public void update(HashMap parameters) throws Exception {
        try{
            FechaPagSql auxFecha=new FechaPagSql();
            String sql_update="UPDATE libro_matriz set "
                    + "Libro_Matriz="+(String)parameters.get("libroMatriz")+","
                    + "Folio_Matriz="+(String)parameters.get("folioMatriz")+","
                    + "LibroActExamen="+(String)parameters.get("libroActExamen")+","
                    + "FolioActExamen="+(String)parameters.get("folioActExamen")+","
                    + "Fecha_Reg=\""+auxFecha.formatoFechaSql((String)parameters.get("fechaReg"))+"\","
                    + "Regularizado="+(String)parameters.get("regularizado")+","
                    + "Fecha_Final=\""+auxFecha.formatoFechaSql((String)parameters.get("fechaFinal"))+"\","
                    + "Nota_Final="+(String)parameters.get("notaFinal")
                    +" WHERE legajo="+(String)parameters.get("legajo")+" AND Cod_Materia="+(String)parameters.get("codMateria");
           // System.out.println("UPDATE EN BASE: "+sql_update);
       //      String sql_update="UPDATE USUARIO set PASSWORD='"+(String)parameters.get("password")+"', APELLIDO='"+(String)parameters.get("apellido")+"', NOMBRE='"+(String)parameters.get("nombre")+"' where USUARIO='"+(String)parameters.get("usuario")+"'";
            execute(sql_update);
        }
        catch(Exception exc){
            throw new Exception(exc.getMessage());
        }         
    }
	/*
	 * No modificar esta funcion ya que se usa en carga de 
	 */
    public void updateSICNOD(HashMap parameters) throws Exception {
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
			execute(update);
        }
        catch(Exception exc){
                        throw new Exception(exc.getMessage());
        }       
    }
        
}