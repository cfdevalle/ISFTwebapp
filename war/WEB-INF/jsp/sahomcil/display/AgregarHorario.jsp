<%@page import="org.isft.logic.updater.AbmHorario"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="org.isft.logic.AccessManager"%>
<%@page import="java.util.Vector"%>
<%@page import="org.isft.logic.collection.CollectionHorario"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.helper.sim.recuperanombre"%>
<%@taglib uri="/WEB-INF/tld/comboMaterias.tld" prefix="materias" %>
<%@taglib uri="/WEB-INF/tld/ComboProfesores.tld" prefix="profes"%>
<%
                            int i=0;
                            int j=0;
                            //recupero parametros
                            String carrera=request.getParameter("carrera");
                            String curso=request.getParameter("curso");
                            String hora=request.getParameter("hora");
                            String dia=request.getParameter("dia");    
                           
%>
<%-- 
    Document   : despachador
    Created on : 24-jun-2013, 11:07:44
    Author     : Ariel
--%>
         <!-- esta es la ventana modal que se muestra al apretar el boton agregar   -->
         
        
        <!-- se crea la estructura de la ventana modal -->
        <div id="myModal" class="modal hide fade lightbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">

            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button> 
            <%  
                //muestra datos seleccionados anteriormente
                recuperanombre rn = new recuperanombre();
                String nomcar="";
                String nomcurso="";
                String nomdia="";
                HashMap hm = new HashMap ();
                hm.put("cod",carrera);
                hm.put("campo","nombre");
                hm.put("where","cod_carrera");
                hm.put ("tabla","carrera");
                nomcar=rn.getnombre(hm);

                hm.put("cod",curso);
                hm.put("campo","descripcion");
                hm.put("where","cod_curso");
                hm.put ("tabla","curso");
                nomcurso=rn.getnombre(hm);

                hm.put("cod",dia);
                hm.put("campo","descripcion");
                hm.put("where","dia");
                hm.put ("tabla","dia");
                nomdia=rn.getnombre(hm);
                out.println("<p>Carrera: "+nomcar+" curso: "+nomcurso+" dia: "+nomdia+" hora: "+hora+"</p>");
                    out.println("Para llenar el campo");
            %>    
            <h3 id="myModalLabel">Seleccione la Materia</h3>
        
        </div>
        <div class="modal-body" id="materias">
            <!-- crea combo de materias segun carrera y curso -->
            <materias:materia carrera="<%=carrera%>" curso="<%=curso%>"></materias:materia>
             <!--crea combo de los profesores-->
            <profes:Profesores></profes:Profesores>
            </div>
<div class="modal-footer" id="footer">
<button class="btn" data-dismiss="modal" aria-hidden="true">cancelar</button>
<button class="btn btn-primary" onclick="altahorario('<%=dia%>','<%=hora%>','<%=carrera%>','<%=curso%>');">aceptar</button>
<!--div donde se cargara el resultado de la operacion -->
<div id="ejecutor"></div>        
</div>
        </div>
    
              