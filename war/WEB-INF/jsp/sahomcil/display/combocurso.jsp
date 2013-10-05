<%-- 
    Document   : combocurso
    Created on : 07-jul-2013, 21:32:16
    Author     : Ariel Dupuy
--%>

<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.collection.CollectionCurso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tld/combocursos" prefix="cursos" %>
<!DOCTYPE html>

<div class="row " >
            <div class="span3" style="min-height: 70px">
                <h4> Seleccione Curso:</h4>
            </div>
                <div class="span4" >
                    <% 
                    String carrera=(String)request.getParameter("carrera");
                    %><cursos:cursos carrera="<%=carrera%>"></cursos:cursos>
        
                </div>
        </div>
       
     <!-- la tabla de informacion de materias/horas/profesor/dia ocupando 12 columnas     -->
     <div name="tablahorario" id="tablahorario">
         
     </div>
                  
     <div name="ventana" id="ventana">
         
     </div>
