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
                    <li > <a href="modulo.go?codPage=2003">Cronograma Finales</a></li>
                    <li > <a href="modulo.go?codPage=2004">Inscripcion a Finales</a></li>
                    <li > <a href="modulo.go?codPage=2002">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            <div class="span12" style="min-height: 600px">   
             
         
                    <h1 align="center"><u>Bienvenido</u></h1>
                    <br>
                    <br>
                    <table border="0" align="center">
                        <tr>
                            <td rowspan="5"><img src="static/images/sim/sistema_de_inscripcion_a_materias.png" width="269" height="168"></td>
                        </tr>
                        <tr>
                            <td><h4>Consultar Fechas</h4></td>
                            <td width="50"></td>
                            <td>Muestra el cronograma de las fechas y turnos de cada final de la carrera elegida.</td>
                        </tr>
                        <tr>
                            <td><h4>Realizar Inscripcion</h4></td>
                            <td width="50"></td>
                            <td>Muestra las fechas y turnos para las materias a las cuales uno se puede inscribir.</td>
                        </tr>
                        <tr>
                            <td><h4>Modificar Inscripcion</h4></td>
                            <td width="50"></td>
                            <td>Permite modificar una inscripcion previamente hecha.</td>
                        </tr>
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
