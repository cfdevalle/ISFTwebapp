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
import org.isft.logic.updater.AbmLibroMatriz;
import java.util.HashMap;
import org.isft.domain.helper.FechaHora;

public class ControladorLibroMatriz  extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String regularizado=request.getParameter("regularizado");
 		String fechaReg=request.getParameter("fechaReg");
 		String notaFinal=request.getParameter("notaFinal");
 		String fechaFinal=request.getParameter("fechaFinal");
                
                String libroActExamen=request.getParameter("libroActExamen");
                String folioActExamen=request.getParameter("folioActExamen");
                String folioMatriz=request.getParameter("folioMatriz");
                String libroMatriz=request.getParameter("libroMatriz");
                
                String codMateria=request.getParameter("codMateria");
                String codCarrera=request.getParameter("codCarrera");
                String legajo=request.getParameter("legajo");
 		String accion=request.getParameter("accion");
 		
 		HashMap param=new HashMap();
 		param.put("regularizado", regularizado);
 		param.put("fechaReg", fechaReg);
 		param.put("notaFinal", notaFinal);
 		param.put("fechaFinal", fechaFinal);
                
                param.put("libroActExamen", libroActExamen);
 		param.put("folioActExamen", folioActExamen);
 		param.put("folioMatriz", folioMatriz);
                param.put("libroMatriz", libroMatriz);
                
                param.put("codMateria", codMateria);
 		param.put("codCarrera", codCarrera);
                param.put("legajo", legajo);
 		
 		AbmLibroMatriz abm=new AbmLibroMatriz();
 		try{
                    if(accion.equals("mod")){
                        abm.update(param);
                    }
                    if(accion.equals("eli")){
                        abm.delete(param);
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
