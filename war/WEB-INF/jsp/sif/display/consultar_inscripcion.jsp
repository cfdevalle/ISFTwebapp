<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Consultar Inscripcion</title>
    </head>
    <body>
      
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <%@include file="../includes/sif_menu.jsp" %>
            <div class="span12" style="min-height: 600px">   
                    <h1 align="center"><u>Materias Inscripto/a</u></h1>
                    <br>
                    <br>
                    <table align="center" cellpadding="5">
                        <tr>
                            <td><h4>Materia</h4></td>
                            <td><h4>Fecha</h4></td>
                            <td><h4>Turno</h4></td>
                            <td><h4>Profesor</h4></td>
                            <td><h4>Desinscrivirse</h4></td>
                        </tr>
                        <tr>
                            <td>Algebra</td>
                            <td>27 de Noviembre</td>
                            <td>Noche</td>
                            <td>Prof. Mastuntuono</td>
                            <td align="center"><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" /></td>
                            
                        </tr>
                        <tr>
                            <td>Edi 1</td>
                            <td>28 de Noviembre</td>
                            <td>Noche</td>
                            <td>Prof. Hansen</td>
                            <td align="center"><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" /></td>
                        </tr>
                        <tr>
                            <td>Programacion 1</td>
                            <td>29 de Noviembre</td>
                            <td>Ma�ana</td>
                            <td>Prof. Seoane</td>
                            <td align="center"><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" /></td>
                        </tr>
                        <tr>
                            <td>Adm. de las Org.</td>
                            <td>30 de Noviembre</td>
                            <td>Ma�ana</td>
                            <td>Prof. Massaro</td>
                            <td align="center"><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" /></td>
                        </tr>
                    </table>
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
