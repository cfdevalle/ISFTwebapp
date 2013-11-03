
<%@page import="java.util.Vector"%>
<%@page import="org.isft.logic.collection.CollectionCarrera"%>
<%@page import="org.isft.logic.updater.AbmUsuario"%>
<%@page import="org.isft.logic.LogicManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.domain.DataBase"%>
<%@taglib  uri="/WEB-INF/tld/ComboCarrera.tld" prefix="carr" %>
<!DOCTYPE html><%-- 
    Document   : despachador
    Created on : 05-may-2013, 0:07:44
    Author     : Pablo
--%>
<html>
    <head>
        
        <title>Horarios</title>
        <script src="static/js/sahomcil/funcionesSahomcil.js"></script>
        <link href="../../../static/css/sahomcil/sahomcil.css">
        <script>
            //si la pagina ya termino de cargar carga combo de cursos y la tabla vacios
            $("#carrera").ready(
            $("#combocurso").load("modulo.go?codPage=5003").ready(
            $("#tablahorario").load("modulo.go?codPage=5005",{carrera:0})
    )
    );
        </script>
    </head>
    <body>
    
    
    
        <!-- el div que tiene el combo de carreras ocupando 3 columnas     -->
       <div class="row-fluid">
            <div class="span2" >
                <h5>Seleccione Carrera:</h5>
            </div>
            <div class="span3" >
            <!--llama al tld carrera para que muestre un combo de carreras-->
                <carr:carrera></carr:carrera>
               </div>
           
   
        <!-- el div que tiene el combo de curso ocupando 3 columnas     -->
        <!--div donde se cargara el combo de cursos segun carrera-->
        <div name="combocurso" id="combocurso" style="min-height: 70px" >
        </div>
       </div>
         
              </body>
        
</html>
