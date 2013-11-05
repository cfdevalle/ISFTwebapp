
package org.isft.web.servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.ResourceBundle;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.util.JRLoader;
import org.isft.domain.Alumnos;
import org.isft.jdbc.DataBase;
import org.isft.logic.EnviarEmail;
import org.isft.logic.validator.ValidarSituacionMateria;


public class ControladorEmail extends HttpServlet {
    private String hayDatos="";

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	doGet(request, response);
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //CAPTURA DE DATOS
        String datos=request.getParameter("datos");
        String[] p_split=datos.split("-");  
        String destino=p_split[0];
        String titulo_mail=p_split[1];
        String mensaje_mail=p_split[2];
        String[] archivo=new String[1];
        String fileName=request.getParameter("file");
        Alumnos alumno_sesion=(Alumnos) request.getSession(false).getAttribute("alumno");
        String legajo=Integer.toString(alumno_sesion.getLegajo());
        String carrera=Integer.toString(alumno_sesion.getCarrera().getCod_carrera());
        ValidarSituacionMateria vsm=new ValidarSituacionMateria();
        
        //EL RESTO
        archivo[0] = "../webapps/ISFTWebapp/jsp/reports/sif/"+fileName+".pdf";
        response.setContentType("html/text");
        EnviarEmail mailer = new EnviarEmail();
        try {
            hayDatos=vsm.hayDatos(legajo,carrera);
            if(!hayDatos.equals("")){
                response.getWriter().write("ERROR:"+hayDatos);
                return;        
            }else{
                generar(request,response,carrera,legajo);
                mailer.enviarEmailConArchivoAdjunto(destino, titulo_mail, mensaje_mail, archivo);
                response.getWriter().write("");
                return;
            }
        } catch (Exception ex) {
            System.out.println("Error en controlador Email.");
            ex.printStackTrace();
        }
   }
  
  public void generar(HttpServletRequest request, HttpServletResponse response, String carrera, String legajo) throws ServletException, IOException {
	  	HashMap parameters=new HashMap();
	  	String path="",  error="";
  		String codPage=request.getParameter("cod"); //codPage, vinculado con pathReportes.properties
  		String fileName=request.getParameter("file"); //nombre del archivo que se exportara
      ResourceBundle resbound=ResourceBundle.getBundle("web.pathReportes");
      try{
          path=resbound.getString(codPage);
      }catch(Exception exc){
          throw new ServletException("Reporte no encontrado");
      }

      System.out.println("Ruta del reporte: " + path);
      try{
          DataBase db=new DataBase(new HashMap());
          Connection cn=db.getConnection();
          
          if(!hayDatos.equals("")){
              response.getWriter().write("ERROR:"+hayDatos);
              return;        
          }else{
                parameters.put(carrera, legajo);
                //ServletOutputStream out;
                JasperReport jasperReport = (JasperReport)JRLoader.loadObject (path);                
                // fill JasperPrint using fillReport() method
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameters,cn);
                JasperExportManager.exportReportToPdfFile(jasperPrint,
                "../webapps/ISFTWebapp/jsp/reports/sif/"+fileName+".pdf");
                response.setContentType("application/pdf");
          }     
      }catch(Exception exc){
      		exc.printStackTrace();
          throw new ServletException("Error al generar el reporte");
      }
   }
}
