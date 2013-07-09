<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion Materia</title>
    </head>
    <body>
      
            <%@include file="../../includes/encabezado_inc.jsp" %>
         <div class="row">
            <div class="span12"> 
               
            	<ul class="nav nav-tabs">
                    <li > <a href="modulo.go?codPage=2001">Bienvenido</a></li>
                    <li > <a href="modulo.go?codPage=2003 ">Consultar Fechas</a></li>
                    <li  >              <a href="modulo.go?codPage=2004 ">Realizar Inscripcion</a></li>
                    <li >               <a href="#">Modificar Inscripcion</a></li>
                    <li class="active" >               <a href="modulo.go?codPage=2002  ">Consultar Inscripcion</a></li>
                </ul>

            
            </div>
            </div>
            <div class="span12" style="min-height: 600px">   
                    <h1 align="center"><u>Materias Inscripto/a</u></h1>
                    <br>
                    <br>
                    <table align="center" cellpadding="5">
                        <tr><td><h4>Materia</h4></td><td><h4>Fecha</h4></td><td><h4>Turno</h4></td><td><h4>Profesor</h4></td></tr>
                        <tr><td>Algebra</td><td>27 de Noviembre</td><td>Noche</td><td>Prof. Mastuntuono</td></tr>
                        <tr><td>Edi 1</td><td>28 de Noviembre</td><td>Noche</td><td>Prof. Hansen</td></tr>
                        <tr><td>Programacion 1</td><td>29 de Noviembre</td><td>Mañana</td><td>Prof. Seoane</td></tr>
                        <tr><td>Adm. de las Org.</td><td>30 de Noviembre</td><td>Mañana</td><td>Prof. Massaro</td></tr>
                    </table>
                    
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><input type="button" value="Guardar"></td>
                            <td width="200"><input type="button" value="Volver al Inicio"></td>
                        </tr>
                    </table>
                    
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
