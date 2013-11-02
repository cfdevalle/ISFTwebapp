/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


package org.isft.logic.updater;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;



import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.isft.domain.helper.FechaHora;
import org.isft.logic.AccessManager;
import sun.util.calendar.BaseCalendar.Date;

/**
 *
 * @author Ariel
 */
public class AbmHorario extends UpdaterManager implements UpdaterInterface{

    public void insert(HashMap parameters) throws Exception{
        //se reciben los parametros
        String carrera=(String)parameters.get("carrera");
        String curso=(String)parameters.get("curso");
        String dia=(String)parameters.get("dia");
        String hora_desde=(String)parameters.get("hora_desde");
        String Materia=(String)parameters.get("materia");
        String Profesor=(String)parameters.get("profesor");
        System.out.println("profesor"+Profesor);
        //se instancia una fecha
        FechaHora fecha = new FechaHora();
        //se carga lectivo con el año actual
        int lectivo=fecha.getAnioActual();
        System.out.println("el año actual es: "+lectivo);
        //se instancia accesMannager
        AccessManager am = new AccessManager();
        ResultSet rs = null;
        try {
            //se realiza la consulta de hora_hasta
            rs = am.execute("select hora_hasta from hora where hora_desde='"+hora_desde+"';");
        } catch (Exception ex) {
<<<<<<< HEAD
<<<<<<< HEAD
          throw new Exception();
=======
            System.out.println(ex.getMessage());
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
=======
            System.out.println(ex.getMessage());
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
        }
        String hora_hasta="";
        //se carga hora_hasta con el valor traido por la consulta
        try {
            while(rs.next()){
            hora_hasta=rs.getString("hora_hasta");
        
            
            }
        } catch (SQLException ex) {
<<<<<<< HEAD
<<<<<<< HEAD
           throw new Exception();
}
=======
=======
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
            System.out.println(ex.getMessage());
        }
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
        System.out.println("hora_hasta: "+hora_hasta);
        try{
            //se realiza el insert en cursoscantidad de un nuevo curso con cantidad de alumnos 0
        execute("insert into cursos_cantidad (lectivo, cant_alumnos, legajoProfesor,cod_curso,cod_carrera,cod_materia) values ('"+lectivo+"', 0,'"+Profesor+"', '"+curso+"', '"+carrera+"', '"+Materia+"');");
        }catch(Exception e){
            System.out.println("error en cursos_cantidad: "+e.getMessage());
            try {
                //se realiza el insert en la tabla horario en el caso de que cursocantidad ya este
                execute("INSERT INTO horario (dia, Hora_desde, Hora_hasta, lectivo, legajoProfesor, Cod_Curso, Cod_Carrera, Cod_Materia) VALUES ('"+dia+"', '"+hora_desde+"', '"+hora_hasta+"', '"+lectivo+"', '"+Profesor+"', '"+curso+"', '"+carrera+"', '"+Materia+"');");
            } catch (Exception ex) {
<<<<<<< HEAD
<<<<<<< HEAD
          throw new Exception();
  }
=======
=======
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
                System.out.println(ex.getMessage());
            }
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
    }
        try {   
            //se realiza el inset en horario en el caso de que curso cantidad no estaba
            execute("INSERT INTO horario (dia, Hora_desde, Hora_hasta, lectivo, legajoProfesor, Cod_Curso, Cod_Carrera, Cod_Materia) VALUES ('"+dia+"', '"+hora_desde+"', '"+hora_hasta+"', '"+lectivo+"', '"+Profesor+"', '"+curso+"', '"+carrera+"', '"+Materia+"');");
        } catch (Exception ex) {
<<<<<<< HEAD
<<<<<<< HEAD
            throw new Exception();

=======
            System.out.println(ex.getMessage());
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
=======
            System.out.println(ex.getMessage());
>>>>>>> 91dba56387913719c5e28bc3bc52d07d41791e45
        }
        System.out.println("insert horario listo");
       
}
//eliminar
    public void delete(HashMap parameters){
      //se reciben parametros
      String hora=(String) parameters.get("hora");
      String dia=(String) parameters.get("dia");
      String curso=(String) parameters.get("curso");
      String carrera=(String) parameters.get("carrera");
      String materia=(String)parameters.get("materia");
      System.out.println("curso:"+curso+" carrera: "+carrera);
        System.out.println("se va a eliminar el registro: "+materia);
        try {
      //se ejecuta el delete en horario
            execute("DELETE FROM horario WHERE dia='"+dia+"' AND hora_desde='"+hora+"' AND cod_curso='"+curso+"' AND cod_carrera='"+carrera+"';");
        } catch (Exception ex) {
            System.out.println("error en delete: "+ex.getMessage());
        }
        System.out.println("DELETE FROM horario WHERE dia='"+dia+"' AND hora_desde='"+hora+"' AND cod_curso='"+curso+"' AND cod_carrera='"+carrera+"';");
        System.out.println("eliminado correctamente");
    }
    //modificaciones no son necesarias
    public void update(HashMap parameters) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
