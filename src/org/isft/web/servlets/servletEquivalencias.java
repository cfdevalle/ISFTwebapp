/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import org.isft.logic.updater.AbmEquivalencias;

public class servletEquivalencias  extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		
      String carrera_origen=request.getParameter("carrera_o");
      String materia_origen=request.getParameter("materia_o");
      
      String carrera_destino=request.getParameter("carrera_d");
      String materia_destino=request.getParameter("materia_d");
      
      String accion_a=request.getParameter("accion");
     // System.out.println("ACCCCIONNNNN    *"+accion_a);
     /* System.out.println("ENTRO A MI SERVLET FACUNDO");
      System.out.println("codigo carrera o"+carrera_origen);
      System.out.println("codigo carrera d "+carrera_destino);
      System.out.println("codigo materia o"+materia_origen);
      System.out.println("codigo materia d"+materia_destino);*/
      
      HashMap parametros= new HashMap();
      parametros.put("carrera_o",carrera_origen);
      parametros.put("materia_o",materia_origen);
      parametros.put("carrera_d",carrera_destino);
      parametros.put("materia_d",materia_destino);
      
      AbmEquivalencias abm= new AbmEquivalencias();
      
      
 		try{
                    if ("1".equals(accion_a)){
                    abm.insert(parametros);
                    }
                    if("2".equals(accion_a)){
                        System.out.println("entro al 2");
                        abm.delete(parametros);
                    }
 		} 
 		catch(ServletException exc){
 			throw new ServletException(exc.getMessage());
 		}
 		catch(Exception exc){
 			throw new ServletException(exc.getMessage());
 		}
      
 		
  }
}
