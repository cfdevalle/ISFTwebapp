<%-- 
    Document   : tablahorarios
    Created on : 10-jul-2013, 16:08:09
    Author     : Ariel Dupuy
--%>

<%@page import="org.isft.logic.collection.CollectionHorario"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.isft.logic.AccessManager"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.AccessInterface"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        

      <div class="row">
            <div class="span10 offset1">
                <h1> Horarios:</h1><br>
                <table class="table table-hover table-bordered table-condensed" id="table">
                    <thead> 
                     
                    </thead>
                    <tbody>
                       
                            <%
                            int i=0;
                            int j=0;
                            String curso=request.getParameter("curso");
                            CollectionHorario ch = new CollectionHorario();
                            HashMap hm =new HashMap ();
                            HashMap p= new HashMap();
                            HashMap horario=new HashMap();
                            hm.put("dia", "1");
                            p.put("dia","1");
                            horario.put("dia","lunes" );
                            horario.put("curso",curso);
                            Vector dias =ch.getdias();
                            Vector hora_desde=ch.gethora_desde();
                            HashMap mathor=new HashMap();
                            mathor.put("hora", "08:00:00");
                            mathor.put("curso", curso);
                            Vector matxhora=ch.getMateriahora(mathor);
                           Vector dia=new Vector();
                            try {
                               dia=ch.getmatdia(mathor);
                                                     }catch (Exception e){
                                                     System.out.println("error "+e.getMessage());
                                                     } 
                           out.print("<tr><td>Horas</td>");
                            int k=0;
                                for (i=-1;i<dia.size();i++)
                                    
                                out.print("<td class=\"success\">"+(String)dias.get(i+1)+"</td>");
                                    System.out.println("dia:"+(String)dias.get(i)); 
                                    System.out.println("dia.size en jsp: "+dias.size());
                                    out.println("</tr>");
                                //hora:08:00
                                    System.out.println("empezo fila:"+(String)hora_desde.get(0));
                                    out.println("</tr>");
                                out.print("<tr>");
                               
                                      out.print("<td class=\"success\">"+(String)hora_desde.get(0)+"</td>");
                                   System.out.println("dias: "+dia.size());
                                      for(j=0 ;j<dias.size()||k<=dia.size(); j++){
                                         
                                         
                                       if (k==j){                                     
                                         out.println("<td class=\"success\">"+(String)matxhora.get(j)+"</td>");
                                         k++;                                     }
                                          else{
                                          
                                          out.println("<td class=\"success\">vacio</td>");          }}      
                                 out.println("</tr>");
                                //hora 09:00
                                mathor.put("hora", "09:00:00");
                                mathor.put("curso", curso);
                                matxhora=ch.getMateriahora(mathor);
                                try {
                               dia=ch.getmatdia(mathor);
                                                     }catch (Exception e){
                                                     System.out.println("error "+e.getMessage());
                                                     } 
                            
                                 out.print("<tr>");
                               
                                      out.print("<td class=\"success\">"+(String)hora_desde.get(1)+"</td>");
                               
                                     for(j=0 ;j<dias.size()||k<dia.size(); j++){
                                          
                                      
                                       if (k==j){
                                           k++;
                                                                           
                                         out.println("<td class=\"success\">"+(String)matxhora.get(j-1)+"</td>");
                                                                              }
                                         else{
                                          
                                          out.println("<td class=\"success\">vacio</td>");          }}      
                                 out.println("</tr>");
                                //hora 10:00
                                 mathor.put("hora", "10:00");
                                mathor.put("curso", curso);
                                matxhora=ch.getMateriahora(mathor);
                                try {
                               dia=ch.getmatdia(mathor);
                                                     }catch (Exception e){
                                                     System.out.println("error "+e.getMessage());
                                                     } 
                            
                                 out.print("<tr>");
                               
                                      out.print("<td class=\"success\">"+(String)hora_desde.get(2)+"</td>");
                                   
                                      for(j=0 ;j<dias.size()||k<dia.size(); j++){
                                       if (k==j){                                     
                                         out.println("<td class=\"sucess\">"+(String)matxhora.get(j-1)+"</td>");
                                         k++;                                     }
                                         else{
                                          
                                          out.println("<td>vacio</td>");          }}      
                                 out.println("</tr>");
                                
                                //hora 11:00
                                 mathor.put("hora", "11:00");
                                mathor.put("curso", curso);
                                matxhora=ch.getMateriahora(mathor);
                                try {
                               dia=ch.getmatdia(mathor);
                                                     }catch (Exception e){
                                                     System.out.println("error "+e.getMessage());
                                                     } 
                            
                                 out.print("<tr>");
                               
                                      out.print("<td class=\"success\">"+(String)hora_desde.get(3)+"</td>");
                                   
                                      for(j=0 ;j<dias.size()||k<dia.size(); j++){
                                         
                                         
                                       if (k==j){                                     
                                         out.println("<td class=\"sucess\">"+(String)matxhora.get(j-1)+"</td>");
                                          k++;                                    }
                                         else{
                                          
                                          out.println("<td class=\"sucess\">vacio</td>");          }}      
                                 out.println("</tr>");
                                
                                                                
                                                                                            
                            /*
                                out.println("</tr>");
                             out.println("<tr class='alert'>");
                              out.print( "<td  id='"+j+i+"'----<br><b>"+(String)hora_desde.get(i)+"</b></td>");
                              
                                for ( i=0;i<hora_desde.size();i++)
                            {   if(hora_desde.get(i)==null)
                             out.print( "<td id='"+j+i+"'<P ALIGN=center> <a href=\"#myModal\" role=\"button\" class=\"btn\" data-toggle=\"modal\">Agregar</a></p></td>");
                             else
                                  out.println("<td>"+(String)hora_desde.get(i)+"</td>");
                                          } 
                           
                           
 /*
                                            
                             j++;
                             out.println("</tr>");
                             out.println("<tr class='alert'>");
                                  out.print( "<td  id='"+j+i+"'----<br><b>09:00</b></td>");
                              for ( i=0;i<6;i++)
                            {
                             out.print( "<td id='"+j+i+"'<P ALIGN=center> <a href=\"#myModal\" role=\"button\" class=\"btn\" data-toggle=\"modal\">Agregar</a></p></td>");
                                           } 
                                  out.println("<tr class='success'>");
                            out.print( "<td id='"+j+i+"' ><b>10:00<br></td>");
                            j++;
                            for ( i=0;i<6;i++)
                            {
                             out.print( "<td id='"+j+i+"'<P ALIGN=center> <a href=\"#myModal\" role=\"button\" class=\"btn\" data-toggle=\"modal\">Agregar</a></p></td>");
                                           } 
                             j++;
                             out.println("</tr>");
                             out.println("<tr class='success'>");       
                             out.print( "<td id='"+j+i+"' ><b>11:00<br></td>");
                            for ( i=0;i<6;i++)
                            {
                             out.print( "<td id='"+j+i+"'<P ALIGN=center> <a href=\"#myModal\" role=\"button\" class=\"btn\" data-toggle=\"modal\">Agregar</a></p></td>");
                                           } 
                             j++;
                             out.println("</tr>");
                             out.println("<tr class='success'>");
                 */   %></tbody>
                </table>
            </div>
        </div>
                 <!-- esta es la ventana modal que se muestra al apretar el boton agregar   -->
          <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> Para llenar el campo
                <h3 id="myModalLabel">Seleccione la Materia</h3>
        </div>
        <div class="modal-body">
            <SELECT NAME="materia" id="materia" style=" width:100px" SIZE=1></p> 
            <% 
                HashMap hm1= new HashMap();
                String cursos=request.getParameter("curso");
                hm1.put("campos","nombre" );
                hm1.put("curso","3-B" );
                CollectionMaterias cm = new CollectionMaterias();
                Vector vector=cm.select(hm1);
                for (i=0;i<vector.size();i++){
                String materia=(String)vector.get(i);
                out.println("<OPTION VALUE='"+materia+"'>"+materia+"</OPTION>");
                }
            
            %>
            </SELECT> <br>
</div>
<div class="modal-footer">
<button class="btn" data-dismiss="modal" aria-hidden="true">cancelar</button>
<button class="btn btn-primary">aceptar</button>
</div>
</div>
                 <!-- aca hay una serie de DIV'S ocupando 3 columnas cada una de ellas y 3 columnas en offset     -->
           <div class="span12 row" style="min-height: 100px; float: left" >
               <a class="btn success  " style="float: right" onclick="javascript: alert('Al oprimir aqui se podra imprimir el horario')">
                   Imprimir
                </a>
           
                  <div class="span2 " style="min-height: 100px; float: right">
               <a class="btn btn-error success " style="float: rigth" onclick="javascript: alert('Al oprimir aqui se podra actualizar las horas en las que se dictan las clases')">
                   Modificar horas
                </a>
                  </div>
                  <div class="span2 row" style="min-height: 100px; float: right" >
               <a class="btn btn row" style="float: right" onclick="javascript: alert('Al oprimir aqui se podra actualizar los dias de cursada')">
                   Modificar dias
                </a>
                  </div>
               </div>
            
                 <div class="span10 row">
      
        </div>
    </body>
</html>
