<%-- 
    Document   : combocurso
    Created on : 07-jul-2013, 21:32:16
    Author     : Pablo
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


            <div class="span2" >
                <h5> Seleccione Curso:</h5>
            </div>
                <div class="span2" >
                    <% //recibo parametro de carrera
                    String carrera=(String)request.getParameter("carrera");
                    %><cursos:cursos carrera="<%=carrera%>" carga="true"></cursos:cursos>
        
                </div>
        </div>
       
     <!-- div donde secargara la tabla con todos los datos -->
     <div name="tablahorario" id="tablahorario">
         
     </div>
      <!-- div donde se cargara la ventana modal -->
     <div name="ventana" id="ventana">
         
     </div>
