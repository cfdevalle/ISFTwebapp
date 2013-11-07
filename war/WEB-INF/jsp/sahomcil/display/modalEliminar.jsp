<%-- 
    Document   : modalEliminar
    Created on : 16-sep-2013, 18:01:51
    Author     : Ariel y carolina
--%>

<%@page import="org.isft.logic.helper.sim.recuperanombre"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%
    //recupero parametros 
String materia = request.getParameter("materia");
String carrera= request.getParameter("carrera");
String dia= request.getParameter("dia");
String hora= request.getParameter("hora");
String curso=request.getParameter("curso");
recuperanombre rn = new recuperanombre();
 HashMap hm = new HashMap ();
 String nomdia;
 String nomcurso;
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


%>
         <!--se crea la estructura de la ventana modal-->
        <div id="eliminar" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: block;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="eliminar" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Se va a eliminar </h3>
        
        </div>
            <!--muestra los datos que se van a eliminar-->
        <div class="modal-body" id="sacarMateria">
            <p class="text-warning">Materia: <%=materia%></p><br/>
            <p class="text-warning">Dia: <%=nomdia%></p><br/>
            <p class="text-warning">Hora: <%=hora%></p><br/>
            <p class="text-warning">Curso: <%=nomcurso%></p>
<div class="modal-footer" id="elimfooter">
<button class="btn" data-dismiss="modal" aria-hidden="true">cancelar</button>
<!--apretando el boton finalmente se llama a el js que cara en el div ejecutor la pagina que elimina esos datos y arroja un mensaje-->
<button class="btn btn-primary" onclick="eliminarMateria('<%=dia%>','<%=hora%>','<%=carrera%>','<%=curso%>','<%=materia%>');">aceptar</button>
<div id="ejecutor"></div>        
</div>
        </div></div>
    
       