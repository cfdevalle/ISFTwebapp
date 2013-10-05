
<%@page import="java.util.Vector"%>
<%@page import="org.isft.logic.collection.CollectionCarrera"%>
<%@page import="org.isft.logic.updater.AbmUsuario"%>
<%@page import="org.isft.logic.LogicManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.isft.domain.DataBase"%>
<%@taglib  uri="/WEB-INF/tld/ComboCarrera.tld" prefix="carr" %>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Horarios</title>
        <script src="static/js/sahomcil/funcionesSahomcil.js"></script>
        <link href="../../../static/css/sahomcil/sahomcil.css">
        <script>
            $("#carrera").ready(
            $("#combocurso").load("modulo.go?codPage=5003").ready(
            $("#tablahorario").load("modulo.go?codPage=5005",{carrera:0})
    )
    );
        </script>
    </head>
    <body>
    
    
    
        <!-- el div que tiene el combo de carreras ocupando 3 columnas     -->
       <div class="row">
            <div class="span3" style="min-height: 70px">
                <h4>&nbsp &nbsp Seleccione Carrera:</h4>
            </div>
            <div class="span4" style="min-height: 70px">
            
                <carr:carrera></carr:carrera>
               </div>
            </div>
   
        <!-- el div que tiene el combo de curso ocupando 3 columnas     -->
        <div name="combocurso" id="combocurso" style="min-height: 70px" >
        </div>
         
              </body>
        
</html>
