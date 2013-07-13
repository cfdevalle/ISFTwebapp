<%-- 
    Document   : pruebaWrapper
    Created on : 19-jun-2013, 19:27:31
    Author     : Alan
--%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
                <div class="span12"> 
                	<ul class="nav nav-tabs">
                        <li class="active"> <a href="modulo.go?codPage=4001">Situacion Academica</a></li>
                        <li> <a href="modulo.go?codPage=4002">Peticiones</a></li>
                    </ul>            
                </div>
            </div>
            <div class="row">
                <div class="span10 offset1">
                    <h1> 1er A&ntilde;o</h1>
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Modalidad</th>
                                <th>1er Cuatrimestre</th>
                                <th>2do Cuatrimestre</th>
                                <th>Nota Final</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>100</td>
                                <td>Analisis matematico</td>
                                <td>Presencial</td>
                                <td>4</td>
                                <td>6</td>
                                <td><strong>5</strong></td>
                            </tr>
                            <tr class="success">
                                <td>101</td>
                                <td>Algebra</td>
                                <td>Presencial</td>
                                <td>8</td>
                                <td>2</td>
                                <td><strong>5</strong></td>
                            </tr>
                            <tr class="error">
                                <td>102</td>
                                <td>EDI I</td>
                                <td>Presencial</td>
                                <td>2</td>
                                <td>2</td>
                                <td><strong>2</strong></td>
                            </tr>
                            <tr class="success">
                                <td>103</td>
                                <td>Introduccion a los sistemas de inf.</td>
                                <td>Presencial</td>
                                <td>4</td>
                                <td>4</td>
                                <td><strong>4</strong></td>
                            </tr>
                            <tr class="error">
                                <td>104</td>
                                <td>Programacion 1</td>
                                <td>Libre</td>
                                <td>-</td>
                                <td>-</td>
                                <td><strong>2</strong></td>
                            </tr>
                        </tbody>
                    </table>
					<h1> 2do A&ntilde;o</h1>
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Modalidad</th>
                                <th>1er Cuatrimestre</th>
                                <th>2do Cuatrimestre</th>
                                <th>Nota Final</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>200</td>
                                <td>Analisis matematico II</td>
                                <td>Presencial</td>
                                <td>4</td>
                                <td>4</td>
                                <td><strong>4</strong></td>
                            </tr>
                            <tr class="error">
                                <td>201</td>
                                <td>Probabilidad y Estadistica</td>
                                <td>Libre</td>
                                <td>-</td>
                                <td>-</td>
                                <td><strong>2</strong></td>
                            </tr>
                            <tr class="success">
                                <td>202</td>
                                <td>EDI II</td>
                                <td>Libre</td>
                                <td>-</td>
                                <td>-</td>
                                <td><strong>7</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
