<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css"/>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion Materia</title>
    </head>
    <body>
      
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li class="active"> <a href="modulo.go?codPage=2001">Bienvenido</a></li>
                    <li > <a href="modulo.go?codPage=2003">Consultar Fechas</a></li>
                    <li > <a href="modulo.go?codPage=2004">Realizar Inscripcion</a></li>
                    <li > <a href="modulo.go?codPage=2002">Consultar Inscripcion</a></li>
                </ul>
            </div>
            </div>
            <div class="span12" style="min-height: 600px">   
             
         
                    <h1 align="center"><u>Bienvenido</u></h1>
                    <br>
                    <br>
                    <tr><td><table border="0" align="center" width="500">
                        <tr>
                            <td><h4>Consultar Fechas</h4></td>
                            <td width="50"></td>
                            <td>Muestra el cronograma de las fechas y turnos de cada final de la carrera elegida.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><h4>Realizar Inscripcion</h4></td>
                            <td width="50"></td>
                            <td>Muestra las fechas y turnos para las materias a las cuales uno se puede inscribir.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><h4>Modificar Inscripcion</h4></td>
                            <td width="50"></td>
                            <td>Permite modificar una inscripcion previamente hecha.</td>
                        </tr>
                        <tr><td><br /></td></tr>
                        <tr>
                            <td><h4>Consultar Inscripcion</h4></td>
                            <td width="50"></td>
                            <td>Muestra las materias a la que uno se inscribio previamente con su fecha,turno y profesor.</td>
                        </tr>
                    </table>          
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
