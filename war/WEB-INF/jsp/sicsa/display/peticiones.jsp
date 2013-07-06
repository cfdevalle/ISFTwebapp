<%-- 
    Document   : pruebaWrapper
    Created on : 19-jun-2013, 19:27:31
    Author     : Alan
--%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <script type="text/javascript" src="static/js/facebox.js"></script>
        <link type="text/css" rel="stylesheet" href="static/css/facebox.css"/>
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
        jQuery(document).ready(function($) {
          $('a[rel*=facebox]').facebox() 
        });
            function nuevaPeticion(){
                //console.log(1);

            }
        </script>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
                <div class="span10 offset1">
                    <h1> Peticiones <a style="float:right;" href="modulo.go?codPage=4003" rel="facebox" class="btn btn-primary" >Nueva peticion</a></h1>
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID)</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Titulo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>210</td>
                                <td>Respondida</td>
                                <td>14/06/2013</td>
                                <td>Mal ingreso de nota</td>
                                <td><a href="modulo.go?codPage=4004&idPeticion=210" rel="facebox">Ver</a></td>
                            </tr>
                            <tr class="error">
                                <td>311</td>
                                <td>Esperando respuesta</td>
                                <td>17/07/2013</td>
                                <td>Ingreso de datos</td>
                                <td><a href="modulo.go?codPage=4004&idPeticion=210" rel="facebox">Ver</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
