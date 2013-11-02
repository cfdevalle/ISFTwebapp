<%-- 
    Document   : cboturno
    Created on : 30-oct-2013, 2:13:27
    Author     : Ariel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            //esta funcion manda el dato para saber hasta donde mostrar de la tabla
            function cortatabla(){
              var tur=$("#turno").val();
              $("#pag").load("modulo.go?codPage=5011",{tur:tur});
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="offset1"><select id="turno" onchange="cortatabla()">
            <option value="">Seleccionar vista de tabla</option>
            <option value="1">08:00-12:00</option>
            <option value="2">18:20-22:20</option>
            </select></div>
        <div id="pag"></div>
    </body>
</html>
