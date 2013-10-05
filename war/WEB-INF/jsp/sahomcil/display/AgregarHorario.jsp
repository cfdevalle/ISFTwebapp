<%@page import="org.isft.logic.updater.AbmHorario"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.util.Vector"%>
<%@page import="org.isft.logic.collection.CollectionHorario"%>
<%@page import="java.util.HashMap"%>
<%@taglib uri="/WEB-INF/tld/comboMaterias.tld" prefix="materias" %>
<%
                            int i=0;
                            int j=0;
                            String carrera=request.getParameter("carrera");
                            String curso=request.getParameter("curso");
                            String hora=request.getParameter("hora");
                            String dia=request.getParameter("dia");    
                           
%>

         <!-- esta es la ventana modal que se muestra al apretar el boton agregar   -->
         
        
        
        <div id="myModal" class="modal hide fade lightbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">

            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button> Para llenar el campo
            <%  out.println("<p>Carrera: "+carrera+" curso: "+curso+" dia: "+dia+"hora: "+hora+"</p>");
               %>    
            <h3 id="myModalLabel">Seleccione la Materia</h3>
        
        </div>
        <div class="modal-body" id="materias">
            <materias:materia carrera="<%=carrera%>" curso="<%=curso%>"></materias:materia>
            </div>
<div class="modal-footer" id="footer">
<button class="btn" data-dismiss="modal" aria-hidden="true">cancelar</button>
<button class="btn btn-primary" onclick="altahorario('<%=dia%>','<%=hora%>','<%=carrera%>','<%=curso%>');">aceptar</button>
<div id="ejecutor"></div>        
</div>
        </div>
    
              