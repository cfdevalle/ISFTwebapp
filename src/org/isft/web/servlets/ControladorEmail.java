
package org.isft.web.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.isft.logic.EnviarEmail;


public class ControladorEmail extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	doGet(request, response);
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param=request.getParameter("param");
        String[] p_split=param.split("-");  
        String destino=p_split[0];
        String titulo_mail=p_split[1];
        String mensaje_mail=p_split[2];
        String[] archivo=new String[1];
        archivo[0] = "C:/Proyectos/ReporteFinalesInscriptos.pdf";
        response.setContentType("html/text");
        EnviarEmail mailer = new EnviarEmail();
        try {
            mailer.enviarEmailConArchivoAdjunto(destino, titulo_mail, mensaje_mail, archivo);
            response.getWriter().write("Email enviado con exito.");
            return;
        } catch (Exception ex) {
            System.out.println("Error en controlador Email.");
            ex.printStackTrace();
        }
   }
}
