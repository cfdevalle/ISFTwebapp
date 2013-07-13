
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Cronograma Fechas</title>
        <style type="text/css">td{white-space:nowrap;}</style>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li > <a href="modulo.go?codPage=2001">Bienvenido</a></li>
                    <li class="active"> <a href="modulo.go?codPage=2003">Cronograma Finales</a></li>
                    <li > <a href="modulo.go?codPage=2004">Inscripcion a Finales</a></li>
                    <li > <a href="modulo.go?codPage=2002">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            <div class="span12" style="min-height: 600px">
                    <h1 align="center"><u>Cronograma Finales</u></h1>
                    <br>
                    <br>
                    <table border="2" align="center" width="500">
                        <%--  INGRESO DE TURNO --%>
                        <tr align="center" >
                            <td colspan="5" ><h4>TURNO MAÑANA</h4></td>
                        </tr>
                        
                        <%-- INGRESO DE FECHAS --%>
                        <tr align="center" >
                            <td><b>26/11</b></td>
                            <td><b>27/11</b></td>
                            <td><b>28/11</b></td>
                            <td><b>29/11</b></td>
                            <td><b>30/11</b></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td>ALGEBRA</td>
                            <td>ANALISIS 1</td>
                            <td>PROGRAMACION 1</td>
                            <td>ADM. DE LAS ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>INGLES 1</td>
                            <td>EDI 1</td>
                            <td>SIST OPERATIVOS</td>
                            <td>-</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>EDI 3</td>
                            <td>-</td>
                        </tr>

                        <%--  INGRESO DE TURNO --%>
                        <tr align="center">
                            <td colspan="5"><h4>TURNO NOCHE</h4></td>
                        </tr>
                        
                        <%-- INGRESO DE FECHAS --%>
                        <tr align="center" >
                            <td><b>26/11</b></td>
                            <td><b>27/11</b></td>
                            <td><b>28/11</b></td>
                            <td><b>29/11</b></td>
                            <td><b>30/11</b></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td>EDI 1</td>
                            <td>ALGEBRA</td>
                            <td>PROGRAMACION 1</td>
                            <td width="100">INGLES 1</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>INGLES 1</td>
                            <td>EDI 1</td>
                            <td>INT. SIST. INF.</td>
                            <td>ADM. ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>EDI 2</td>
                            <td>BASE DE DATOS</td>
                            <td>-</td>
                            <td>SIST. INF. 1</td>
                        </tr> 
                    </table>
                </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
