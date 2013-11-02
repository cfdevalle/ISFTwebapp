<%-- 
    Document   : tablahorarios
    Created on : 10-jul-2013, 16:08:09
    Author     : Ariel Dupuy
--%>

<%@page import="org.isft.logic.collection.CollectionCurso"%>
<%@page import="org.isft.domain.Curso"%>
<%@page import="org.isft.logic.collection.CollectionCarrera"%>
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
              $("#div_screen").load("modulo.go?codPage=5011",{curso:curso},5000);
                
            }
            function ver(){
            var ver=$("#vertodo:checked").val();
            $("#div_screen").load("modulo.go?codPage=5011",{curso:"todo"},5000);
          
                
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Sahomcil boys</title>
        
    </head>
    <body>
        

        </div> <div class="row">
            <div class="span7 offset1" id="tabla">
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
                <cursos:cursos carrera="<%=String.valueOf(cod_carrera)%>" carga="false"></cursos:cursos><br>
             
                <div class="span10" >
                    
              <!-- se crea cabecera de la tabla-->
                <table class="table table-hover table-bordered table-condensed" id="table">
                    <thead> 
                     
                    </thead>
                    <tbody>
                        <%
                       
                            int j=0;
                            //recupero parametros
                           String curso=request.getParameter("curso");
                           String check=request.getParameter("check");
                        
                           //instancio collection horario
                           CollectionHorario ch = new CollectionHorario();
                           Vector dias=null;
                           //creo hashmap para los parametros
                           HashMap mathor = new HashMap();
                           mathor.put("carrera", carrera);
                           mathor.put("curso", curso);
                           //recupero dias
                           dias=ch.getdias();
                           //recupero las horas
                           Vector hora_desde=null;
                           if(curso!=null)
                           hora_desde=ch.gethora_desde(curso);
                           else //if (check.ecuals)
                           hora_desde=ch.gethora_desde();
                           //else
                           //hora_desde=ch.gethora_desde(curso);
                           
//crea las filas de la cabecera
                           out.print("<tr></tr>");
                           out.print("<tr><td style=\" width: 7; height: 7\"><center>Horas</center></td>");
                           for(int i=0;i<dias.size();i++)
                            out.print("<td style=\" width: 7; height: 7\"><center>"+dias.get(i)+"</center></td>");   
                            out.print("</tr>");
                            out.print("<tr></tr>");
//crea las filas respetando la eleccion del combo de vista con los datos si los hay sino queda vacio
                              
                             for (j=0;j<hora_desde.size();j++){
                             out.print("<tr></tr>");
                            
                                out.print("<tr><td style=\" width:75; height: 75\"><a class='btn'>"+(String)hora_desde.get(j)+"<a/></td>");
                                for (int i=0 ;i<dias.size();i++)
                                 
                                    { 
                                    String d=String.valueOf(i+1);
                                //se llama al tld encargado de revisar segun la hora y el dia si hay o no materias
                        %><horario:materia carrera="<%=String.valueOf(cod_carrera)%>" curso="<%=curso%>" dia="<%=d%>" hora="<%=(String)hora_desde.get(j)%>"></horario:materia>
                                   
                 <%
                                    } out.print("</tr>");}
                            if (!(curso==null)){
                                
                                CollectionCurso cu = new CollectionCurso();
                            HashMap hm2=new HashMap();
                            hm2.put("carrera", Integer.toString(carrera.getCod_carrera()));
                            Vector vector=cu.select(hm2);
                            String nom_curso="0";
                            for (int i=0;i<vector.size();i++)
                            {   
                                Curso cur = (Curso)vector.get(i);
                                
                                if (Integer.parseInt(curso)==cur.getCod_curso())
                                    nom_curso=cur.getDescripcion();
                            }
                           
                            
                                                     
                              
                   
                            
                  %>
               
                           </tbody>
                </table>
            </div>
        </div>
                   <div class="row">
                    <div class="span12 offset1">
                        <%  
//boton de impresion muestra reporte pdf
out.println("  </div><div class=\"span12 offset12 row\" style=\"min-height: 100px; float: left\" >" );
out.println(" <a href=\"modulo.rpt?cod=5000&param=Cod_carrera="+carrera.getCod_carrera()+"@Cod_curso="+curso+"@Nombre_carrera="+carrera.getNombre()+"@nombre_curso="+nom_curso+"&file=sahomcil\" class=\"btn btn-primary\">Imprimir</a>");}%>
              
            </div>
      </div>
                 <
    </body>
</html>
