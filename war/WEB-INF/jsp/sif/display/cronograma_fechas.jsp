
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Cronograma Finales</title>
        <style type="text/css">td{white-space:nowrap;}</style>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <%@include file="../../includes/sif_menu.jsp" %> 
            <div class="span12" style="min-height: 600px">
                    <h1 align="center"><u>Cronograma Finales</u></h1>
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
                            <td colspan="5" ><h4>TURNO NOCHE</h4></td>
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
                            <td colspan="5"><h4>TURNO MAÑANA</h4></td>
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
                    
                    <br>
                    <br>    
                    <%-- Botones de navegacion --%>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><input type="button" value="Ir a Inscripcion"></td>
                            <td width="200"><input type="button" value="Volver al Inicio"></td>
                        </tr>
                    </table>
                </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
