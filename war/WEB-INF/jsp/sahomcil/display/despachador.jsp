<%-- 
    Document   : despachador
    Created on : 05-oct-2013, 0:07:44
    Author     : Ariel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--pagina de prueba de ambos caminos (sin importancia relativa)-->
            
        <script>
            function despachador(){
           
             var seleccion=$("#despachador").val();  
          
             if (seleccion=="false")
             alert ("debe seleccionar su rol");
        else 
            if (seleccion==0)
            $("#principal").load("modulo.go?codPage=5002");
        else 
            if(seleccion==1)
            $("#principal").load("modulo.go?codPage=5004");
    }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="principal">
        <H1>Por favor seleccione su rol</H1>
        <select id="despachador" onchange="despachador(this);">
            <option value="false">...</option>
            <option value="0">Directivo</option>
            <option value="1">Alumno</option>

        </select>
        </div>
    </body>
</html>
