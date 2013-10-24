<%-- 
    Document   : tablahorarios
    Created on : 10-jul-2013, 16:08:09
    Author     : Ariel Dupuy
--%>

<%@page import="org.isft.domain.Carrera"%>
<%@page import="org.isft.domain.Alumnos"%>
<%@page import="org.isft.logic.collection.CollectionHorario"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.isft.logic.AccessManager"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.AccessInterface"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tld/Combocursos.tld" prefix="cursos" %>
<%@taglib uri="/WEB-INF/tld/Horario.tld" prefix="horario"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function horariosincarga(){
        //recupera valor del curso seleccionado   
        var curso=$("#curso").val(); 
              
              //carga en el div principal la tabla y le paso el parametro curso mas un tiempo de recarga 
              $("#principal").load("modulo.go?codPage=5004",{curso:curso},5000);
                
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Sahomcil boys</title>
        
    </head>
    <body>
        

      <div class="row">
            <div class="span10 offset1">
                <h4>Seleccione su curso</h4>
                <%
                //se recupera el alumno de sesion
                Alumnos alu = (Alumnos)request.getSession(false).getAttribute("alumno");
                //se recupera la carrera de sesion
                Vector crrs=alu.getCarreras();
                Carrera carrera =(Carrera) crrs.get(0);
                out.println("Tu carrera es: "+carrera.getNombre());
                int cod_carrera=carrera.getCod_carrera();
                %>
                <br>
                <!-- se llama al tld cursos y se le pasa la carrera para que de los cursos disponibles segun la carrera-->
                <cursos:cursos carrera="<%=String.valueOf(cod_carrera)%>" carga="false"></cursos:cursos>
                <h1> Horarios:</h1><br>
              <!-- se crea cabecera de la tabla-->
                <table class="table table-hover table-bordered table-condensed" id="table">
                    <thead> 
                     
                    </thead>
                    <tbody>
                        <%
                       
                            int j=0;
                            //recupero parametros
                           String curso=request.getParameter("curso");
                           out.println("tu curso es: "+curso);
                           //instancio collection horario
                           CollectionHorario ch = new CollectionHorario();
                           Vector dias=null;
                           //crep hashmap para los parametros
                           HashMap mathor = new HashMap();
                           mathor.put("carrera", carrera);
                           mathor.put("curso", curso);
                           //recupero dias
                           dias=ch.getdias();
                           //recupero las horas
                           Vector hora_desde=ch.gethora_desde();
                           //crea las filas de la cabecera
                           out.print("<tr></tr>");
                           out.print("<tr><td style=\" width: 7; height: 7\"><center>Horas</center></td>");
                           for(int i=0;i<dias.size();i++)
                            out.print("<td style=\" width: 7; height: 7\"><center>"+dias.get(i)+"</center></td>");   
                            out.print("</tr>");
                            out.print("<tr></tr>");
                            //crea las filas restantes con los datos si los hay sino queda vacio
                            for (j=0;j<hora_desde.size()&&j<8;j++){
                             out.print("<tr></tr>");
                            
                                out.print("<tr><td style=\" width:75; height: 75\"><a class='btn'>"+(String)hora_desde.get(j)+"<a/></td>");
                                for (int i=0;i<dias.size();i++)
                                 
                                    { 
                                    String d=String.valueOf(i+1);
                                //se llama al tld encargado de revisar segun la hora y el dia si hay o no materias
                        %><horario:materia carrera="<%=String.valueOf(cod_carrera)%>" curso="<%=curso%>" dia="<%=d%>" hora="<%=(String)hora_desde.get(j)%>"></horario:materia>
                                   
                 <%
                                    } out.print("</tr>");}
                              
                    %>
                       
                           </tbody>
                </table>
            </div>
        </div>
                 <
    </body>
</html>
