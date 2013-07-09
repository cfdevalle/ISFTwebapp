<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion a Finales</title>
        <style type="text/css">td{white-space:nowrap;text-align:left;}</style>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
               
            	<ul class="nav nav-tabs">
                    <li > <a href="modulo.go?codPage=2001">Bienvenido</a></li>
                    <li > <a href="modulo.go?codPage=2003 ">Consultar Fechas</a></li>
                    <li class="active" >              <a href="modulo.go?codPage=2004 ">Realizar Inscripcion</a></li>
                    <li >               <a href="#">Modificar Inscripcion</a></li>
                    <li >               <a href="modulo.go?codPage=2002  ">Consultar Inscripcion</a></li>
                </ul>

            
            </div>
            </div>
            <div class="span12" style="min-height: 600px">
                    <h1 align="center"><u>Inscripcion a Finales</u></h1>
                    <br>
                    <br>
                    <table border="2" align="center" width="500">
                        <%-- INGRESO DE FECHAS --%>
                        <tr align="center">
                            <td>26/11</td>
                            <td>27/11</td>
                            <td>28/11</td>
                            <td>29/11</td>
                            <td>30/11</td>
                        </tr>

                        <%--  INGRESO DE TURNO --%>
                        <tr align="center" >
                            <td colspan="5"><h4 align="center">TURNO NOCHE</h4></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspALGEBRA</td>
                            <td><input type="radio">&nbsp&nbspANALISIS 1</td>
                            <td><input type="radio">&nbsp&nbspPROGRAMACION 1</td>
                            <td><input type="radio">&nbsp&nbspADM. DE LAS ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspINGLES 1</td>
                            <td><input type="radio">&nbsp&nbspEDI 1</td>
                            <td><input type="radio">&nbsp&nbspSIST OPERATIVOS</td>
                            <td>-</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspEDI 3</td>
                            <td>-</td>
                        </tr>

                        <%--  INGRESO DE TURNO --%>
                        <tr align="center">
                            <td colspan="5"><h4 align="center">TURNO MAÑANA</h4></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspEDI 1</td>
                            <td><input type="radio">&nbsp&nbspALGEBRA</td>
                            <td><input type="radio">&nbsp&nbspPROGRAMACION 1</td>
                            <td><input type="radio">&nbsp&nbspINGLES 1</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspINGLES 1</td>
                            <td><input type="radio">&nbsp&nbspEDI 1</td>
                            <td><input type="radio">&nbsp&nbspINT. SIST. INF.</td>
                            <td><input type="radio">&nbsp&nbspADM. ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspEDI 2</td>
                            <td><input type="radio">&nbsp&nbspBASE DE DATOS</td>
                            <td>-</td>
                            <td><input type="radio">&nbsp&nbspSIST. INF. 1</td>
                        </tr> 
                    </table>
                    
                    <br>
                    <br>    
                    <%-- Botones de navegacion --%>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><input type="button" value="Guardar Inscripcion"></td>
                            <td width="200"><input type="button" value="Volver al Inicio"></td>
                        </tr>
                    </table>
                </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
