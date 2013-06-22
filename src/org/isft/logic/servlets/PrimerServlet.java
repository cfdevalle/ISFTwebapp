package org.isft.logic.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class PrimerServlet extends HttpServlet {
   private static final String CONTENT_TYPE = "text/html; charset=windows-1252";
   public void init(ServletConfig config) throws ServletException {
        System.out.println("\n PASO POR INIT\n");        
        super.init(config);
   }
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
       System.out.println("\n PASO POR DOGET\n"); 
       try{
           response.setContentType(CONTENT_TYPE);
           PrintWriter out = response.getWriter();
           out.println("<center>Si mostró ésto es porque el servlet funcionó</center>");
           out.close();
       }catch(Exception sExc){
           throw new ServletException(sExc.getMessage());
       }
   }
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{ 
        System.out.println("\n PASO POR DOPOST\n"); 
        doGet(request, response);
   }

}