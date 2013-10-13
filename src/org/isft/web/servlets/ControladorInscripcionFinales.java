package org.isft.web.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.export.JRHtmlExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import org.isft.domain.Alumnos;
import org.isft.domain.Carrera;
import org.isft.jdbc.DataBase;
import org.isft.logic.updater.AbmInscripcionFinales;
import org.isft.logic.validator.ValidarSituacionMateria;

public class ControladorInscripcionFinales  extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	doGet(request, response);
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param=request.getParameter("param");
        String accion=request.getParameter("accion");
        AbmInscripcionFinales abm=new AbmInscripcionFinales();
        HashMap hash=new HashMap();
        String[] p_split=param.split("@");
        Alumnos alumno_sesion=(Alumnos) request.getSession(false).getAttribute("alumno");
        Carrera car_sesion=(Carrera)alumno_sesion.getCarreras().elementAt(0);
        //fecha hoy
        Calendar currentDate = Calendar.getInstance();
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy/MM/dd"); 
        String fecha_actual = formatter.format(currentDate.getTime());
        try{
            if(accion.equals("B")){
                System.out.println("entro a baja");
                for(int i=0; i<p_split.length; i++){
                    String[] p_split_interno=p_split[i].split("-");
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera", Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    abm.delete(hash);
                }
                
            }else if(accion.equals("A")){
                System.out.println("llego al alta");
                for(int i=0;i<p_split.length;i++){
                    ValidarSituacionMateria vsm=new ValidarSituacionMateria();
                    String[] p_split_interno=p_split[i].split("-");
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera",Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    hash.put("modadlidad_inscripcion", p_split_interno[3]);
                    hash.put("fecha_actual", fecha_actual);
                    hash.put("fecha_final", p_split_interno[5]);
                    hash.put("turno", p_split_interno[6]);
                    boolean inscribible=vsm.validarAlta(hash);
                    if(inscribible){
                        abm.insert(hash);
                    }else{
                        response.sendError(404, "LA MATERIA NO ES VALIDA PARA INSCRIPCION");
                    }
                        
                }
            } else if(accion.equals("U")){
                System.out.println("llego al UPDATE");
                for(int i=0;i<p_split.length;i++){
                    System.out.println("entro al for del UPDATE");
                    String[] p_split_interno=p_split[i].split("-");
                    hash.put("cod_materia", p_split_interno[0]);
                    hash.put("cod_carrera", Integer.toString(car_sesion.getCod_carrera()));
                    hash.put("legajo", Integer.toString(alumno_sesion.getLegajo()));
                    hash.put("modadlidad_inscripcion", p_split_interno[3]);
                    hash.put("fecha_actual", fecha_actual);
                    hash.put("fecha_final", p_split_interno[5]);
                    hash.put("turno", p_split_interno[6]);
                    abm.update(hash);
                } 
        }

        } catch(Exception exc){
      	//response.sendError(404, exc.toString());
       	response.sendError(404, "Aca paso un error");
        //throw new ServletException(exc.getMessage());
  	}
   }
}
