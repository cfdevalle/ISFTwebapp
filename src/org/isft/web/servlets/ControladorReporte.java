package org.isft.web.servlets;

import java.io.IOException;
import java.sql.Connection;
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
import org.isft.jdbc.DataBase;

public class ControladorReporte  extends HttpServlet {
    
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	doGet(request, response);
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		try{	
			generar(request, response);	 
  	} catch(Exception exc){
      	response.sendError(404, exc.toString());
       	throw new ServletException(exc.getMessage());
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
          	String[] s_param=param.split("@");
      			for(int i=0; i<s_param.length; i++){
          		System.out.println("Parametros: " + s_param[i]);      
          		String[] ss_param=s_param[i].split("=");
          		parameters.put(ss_param[0], ss_param[1]);					
          	}
          }
          
          ServletOutputStream out;
          JasperReport jasperReport = (JasperReport)JRLoader.loadObject (path);
       		
       		byte[] reporte= JasperRunManager.runReportToPdf (jasperReport, parameters, cn);

          response.setContentType ("application/pdf");
          response.setHeader ("Content-disposition", "inline; filename="+fileName+".pdf");
          response.setHeader ("Cache-Control", "max-age=30");
          response.setHeader ("Pragma", "No-cache");
          response.setDateHeader ("Expires", 0);
          response.setContentLength (reporte.length);
          out = response.getOutputStream ();

          out.write (reporte, 0, reporte.length);
          out.flush ();
          out.close ();
          
      }catch(Exception exc){
      		exc.printStackTrace();
          throw new ServletException("Error al generar el reporte");
      }
   }
}
