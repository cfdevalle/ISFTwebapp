
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion Materia</title>
    </head>
    <body>
      
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <%@include file="../../includes/sif_menu.jsp" %> 
            <div class="span12" style="min-height: 600px">   
             
         
                    <h1 align="center"><u>Bienvenido</u></h1>
                    <br>
                    <br>
                    <tr><td><table border="0" align="center" width="500">
                        <tr>
                            <td><input type="button" value="Consultar Fechas" style="width: 150px"/></td>
                            <td width="50"></td>
                            <td>Muestra el cronograma de las fechas y turnos de cada final de la carrera elegida.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><input type="button" value="Realizar Inscripcion" style="width: 150px"/></td>
                            <td width="50"></td>
                            <td>Muestra las fechas y turnos para las materias a las cuales uno se puede inscribir.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><input type="button" value="Modificar Inscripcion" style="width: 150px"/></td>
                            <td width="50"></td>
                            <td>Permite modificar una inscripcion previamente hecha.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><input type="button" value="Consultar Inscripcion" style="width: 150px"/></td>
                            <td width="50"></td>
                            <td>Muestra las materias a la que uno se inscribio previamente con su fecha,turno y profesor.</td>
                        </tr>
                    </table>          
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
