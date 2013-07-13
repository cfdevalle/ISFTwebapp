<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion a Finales</title>
       
        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Resultado de la inscripcion</h3>
            </div>
            <div class="modal-body">
                La inscripcion se a realizado con exito y se a enviado un email a la dir a@a.com <br>
            </div>
            <div class="modal-footer">
                <a role="button" class="btn">Modificar direccion de email</a>
                <a class="btn" data-dismiss="modal" aria-hidden="true">cancelar</a>
                <a href="modulo.go?codPage=2002" class="btn btn-primary">aceptar</a>
            </div>
        </div>
    
        <style type="text/css">td{white-space:nowrap;text-align:left;}h4{text-align:center;}</style>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        
    
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li > <a href="modulo.go?codPage=2001">Bienvenido</a></li>
                    <li > <a href="modulo.go?codPage=2003">Cronograma Finales</a></li>
                    <li class="active" > <a href="modulo.go?codPage=2004">Inscripcion a Finales</a></li>
                    <li > <a href="modulo.go?codPage=2002">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>

            <div class="span12" style="min-height: 600px">
                    <h1 align="center"><u>Inscripcion a Finales</u></h1>
                    <br>
                    <br>
                    <form name="formu">
                    <table border="2" align="center" width="500">
                        <tr>
                            <td><h4>Materia</h4></td>
                            <td><h4>Fecha</h4></td>
                            <td><h4>Modalidad de Inscripcion</h4></td>
                            <td><h4>Situacion Academica</h4></td>              
                        </tr>
                        
                        <tr>
                            <td>Analisis Matematico 1</td>
                            <td><select>
                                    <option></option>
                                    <option>Lunes 29/06 (Turno Mañana)</option>
                                    <option>Miercoles 31/06 (Turno Mañana)</option>
                                    <option>Martes 06/07 (Turno Noche)</option>
                                    <option>Viernes 09/07 (Turno Noche)</option>
                                </select>
                            </td>
                            <td>Presencial</td>
                            <td>Cohorte</td>
                        </tr>
                        
                        <tr>
                            <td>Ingles 1</td>
                            <td><select>
                                    <option></option>
                                    <option>Martes 30/06 (Turno Mañana)</option>
                                    <option>Jueves 01/07 (Turno Noche)</option>
                                    <option>Martes 06/07 (Turno Noche)</option>
                                    <option>Jueves 08/07 (Turno Mañana)</option>
                                </select>
                            </td>
                            <td>Libre</td>
                            <td>Recursante</td>
                        </tr>
                        
                        <tr>
                            <td>Adm. de las Org.</td>
                            <td><select>
                                    <option></option>
                                    <option>Miercoles 31/06 (Turno Noche)</option>
                                    <option>Viernes 02/07   (Turno Noche)</option>
                                    <option>Martes 06/07    (Turno Mañana)</option>
                                    <option>Jueves 08/07    (Turno Mañana)</option>
                                </select>
                            </td>
                            <td>Presencial</td>
                            <td>Atraso Academico</td>
                        </tr>
                    </table>
                    
                    <br>
                    <br>    
                    <%-- Botones de navegacion --%>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><a href="#myModal" role="button" class="btn" data-toggle="modal">Guardar Inscripcion</a></td>
                            <td width="200"><a class="btn">Actualizar Pagina</a></td>
                        </tr>
                    </table>
                    </form>
                </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
