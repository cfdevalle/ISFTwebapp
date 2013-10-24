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
<%@taglib uri="/WEB-INF/tld/agregarHorario.tld" prefix="AGRHOR" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>

      <div class="row">
              
            <div class="span10 offset1">
               
                <table class="table table-hover table-bordered table-condensed" id="table">
                    <thead> 
                     
                    </thead>
                    <tbody>
                   
                        <%
                            //recibo parametros
                            int j=0;
                            String carrera=request.getParameter("carrera");
                            String curso=request.getParameter("curso");
                            String hora=request.getParameter("hora");
                            String dia=request.getParameter("dia");    
                            
                            //instancio objeto collectionHorario (se encarga de hacer la consulta de horarios)
                           CollectionHorario ch = new CollectionHorario();
                           Vector dias=null;
                           //creo hashmap para los parametros de collectionHorario
                           HashMap mathor = new HashMap();
                           mathor.put("carrera", carrera);
                           mathor.put("curso", curso);
                           //recupero dias
                           dias=ch.getdias();
                           //recupero horas
                           Vector hora_desde=ch.gethora_desde();
                           //creo cabecera de la tabla
                           out.print("<tr></tr>");
                           out.print("<tr><td style=\" width: 7; height: 7\"><center>Horas</center></td>");
                           for(int i=0;i<dias.size();i++)
                            out.print("<td style=\" width: 7; height: 7\"><center>"+dias.get(i)+"</center></td>");   
                            out.print("</tr>");
                            out.print("<tr></tr>");
                            for (j=0;j<hora_desde.size()&&j<8;j++){
                             out.print("<tr></tr>");
                            
                                out.print("<tr><td style=\" width:75; height: 75\"><a class='btn'>"+(String)hora_desde.get(j)+"<a/></td>");
                                for (int i=0;i<dias.size();i++)
                                 
                                    { 
                                    String d=String.valueOf(i+1);
                                    //se llama al tld agrhor que se encarga de poner el dato si esta disponible o un boton en caso contrario
               %><td style="background-color: #dff0d8; width: 75; height: 75; " ><br/><center><AGRHOR:materia carrera="<%=(String)carrera%>" curso="<%=(String)curso%>" dia="<%=d%>" hora="<%=(String)hora_desde.get(j)%>"></AGRHOR:materia></center></td>
                                   
                 <%             //cierro la fila
                                    } out.print("</tr>");}
                              
                    %></tbody>
                </table>
                    </div>
        </div>
              
            <!-- aca hay una serie de DIV'S ocupando 3 columnas cada una de ellas y 3 columnas en offset     -->
           <div class="span12 row" style="min-height: 100px; float: left" >
            <!-- botom de impresion todavia no funciona    -->
               <button onclick="modulo.rpt?cod=5000&param=cod_carrera=<%=carrera%>@cod_curso=<%=curso%>@nombre carrera=sistemas@nombre curso=1-a&file=sahomcil">
                   Imprimir
                </button>
               
               </div>
            
                 <div class="span10 row">
      
        </div>
           
    </body>
    
</html>
