
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


public class ControladorEmail extends HttpServlet {

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
        
        //EL RESTO
        archivo[0] = "../webapps/ISFTWebapp/jsp/reports/sif/"+fileName+".pdf";
        response.setContentType("html/text");
        EnviarEmail mailer = new EnviarEmail();
        try {
            generar(request,response);
            mailer.enviarEmailConArchivoAdjunto(destino, titulo_mail, mensaje_mail, archivo);
            response.getWriter().write("Email enviado con exito.");
            return;
        } catch (Exception ex) {
            System.out.println("Error en controlador Email.");
            ex.printStackTrace();
        }
   }
  
  public void generar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  	HashMap parameters=new HashMap();
	  	String path="",  error="";
  		String codPage=request.getParameter("cod"); //codPage, vinculado con pathReportes.properties
  		String fileName=request.getParameter("file"); //nombre del archivo que se exportara
  		String param=request.getParameter("param"); //parametros de filtro para enviar al reporte
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

          if(param!=null){
          	System.out.println("Parametros originales: " + param);
          	String[] s_param=param.split("-");
      			for(int i=0; i<s_param.length; i++){
          		System.out.println("Parametros: " + s_param[i]);
          		String[] ss_param=s_param[i].split("=");
          		parameters.put(ss_param[0], ss_param[1]);
          	}
          }

          //ServletOutputStream out;
          JasperReport jasperReport = (JasperReport)JRLoader.loadObject (path);

       		//byte[] reporte= JasperRunManager.runReportToPdf (jasperReport, parameters, cn);
                
                // fill JasperPrint using fillReport() method
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameters,cn);
                JasperExportManager.exportReportToPdfFile(jasperPrint,
                "../webapps/ISFTWebapp/jsp/reports/sif/"+fileName+".pdf");
                response.setContentType("application/pdf");
                /*
                
          response.setContentType ("application/pdf");
          response.setHeader ("Content-disposition", "inline; filename="+fileName+".pdf");
          response.setHeader ("Cache-Control", "max-age=30");
          response.setHeader ("Pragma", "No-cache");
          response.setDateHeader ("Expires", 0);
          response.setContentLength (reporte.length);
          out = response.getOutputStream ();

          out.write (reporte, 0, reporte.length);
          out.flush ();
          out.close ();*/

      }catch(Exception exc){
      		exc.printStackTrace();
          throw new ServletException("Error al generar el reporte");
      }
   }
}
