<%-- 
    Document   : pruebaWrapper
    Created on : 19-jun-2013, 19:27:31
    Author     : Alan
--%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Prueba Wrapper</title>
    </head>
    <body>
        <%@include file="../../includes/encabezado_inc.jsp" %>

        <!-- el div que tiene el combo de carreras ocupando 3 columnas     -->
        <div class="row">
            <div class="span3" style="min-height: 70px">
                <h4>Seleccione Carrera:</h4>
            </div>
            <div class="span4" style="min-height: 70px">
                <SELECT NAME="carrera" SIZE=1 onChange="javascript:alert('cambio de carrera realizado');"> 
                    <OPTION VALUE="analisis_de_sistemas">analisis de sistemas</OPTION>
                    <OPTION VALUE="turismo">turismo</OPTION>
                    <OPTION VALUE="mantenimiento">mantenimiento</OPTION>
                    <OPTION VALUE="administracion">administracion</OPTION> 
                </SELECT> 
            </div>
        </div>

        <!-- el div que tiene el combo de curso ocupando 3 columnas     -->
        <div class="row">
            <div class="span3" style="min-height: 70px">
                <h4>Seleccione Curso:</h4>
            </div>
            <div class="span4" style="min-height: 70px">
                <SELECT NAME="curso" SIZE=1 onChange="javascript:alert('cambio de curso realizado');"> 
                    <OPTION VALUE="1ºB">"1ºA"</OPTION>
                    <OPTION VALUE="2ºA">"2ºA"</OPTION>
                    <OPTION VALUE="2ºB">"2ºB"</OPTION>
                    <OPTION VALUE="3ºA">"3ºA"</OPTION> 
                </SELECT> 
            </div>
        </div>
        <!-- la tabla de informacion de materias/horas/profesor/dia ocupando 12 columnas     -->
        <div class="row">
            <div class="span10 offset1">
                <h1> Horarios:</h1><br>
                <table class="table table-hover table-bordered table-condensed">
                    <thead> 
                        <tr> 
                            <th><P ALIGN=center>Hora</p></th>
                    <th><P ALIGN=center>Lunes</p></th>
                    <th><P ALIGN=center>Martes</p></th>
                    <th><P ALIGN=center>Miercoles</p></th>
                    <th><P ALIGN=center>Jueves</p></th>
                    <th><P ALIGN=center>Viernes</p></th>
                    <th><P ALIGN=center>Sabado</p></th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr class="success">
                            <td ><b>08:00<br>
                                    ----<br>
                                    09:00
                                </b></td>
                                <td><P ALIGN=center> <SELECT NAME="materia"  style=" width:100px" SIZE=1 onChange="javascript:alert('cambio de materia realizada');"></p> 
                                    <OPTION VALUE="algebra">algebra</OPTION>
                                    <OPTION VALUE="programacion">programacion</OPTION>
                                    <OPTION VALUE="arquitectura">arquitectura</OPTION>
                                    <OPTION VALUE="administracion">administracion</OPTION> 
                                </SELECT> <br>
                            <img alt="ok" src="static\images\sahomcil\ok.png" /> <img alt="ok" src="static\images\sahomcil\eliminar.png" /></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td>cod. materia: 101<br>
                                <b>ANALISIS MATEMATICO</b><br>
                                Prof: Enokida E. <br>                               
                                <P ALIGN=right> <img alt="ok" src="static\images\sahomcil\cancelar.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                        </tr>
                        <tr class="success">
                            <td ><b>09:00<br>
                                    ----<br>
                                    10:00
                                </b></td>
                                <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td> <P ALIGN=center><SELECT NAME="materia" style=" width:100px" SIZE=1 onChange="javascript:alert('cambio de materia realizada');"></p> 
                                    <OPTION VALUE="algebra">algebra</OPTION>
                                    <OPTION VALUE="programacion">programacion</OPTION>
                                    <OPTION VALUE="arquitectura">arquitectura</OPTION>
                                    <OPTION VALUE="administracion">administracion</OPTION> 
                                </SELECT> <br>
                            <img alt="ok" src="static\images\sahomcil\ok.png" /> <img alt="ok" src="static\images\sahomcil\eliminar.png" /></td>
                            <td>cod. materia: 101<br>
                                <b>ANALISIS MATEMATICO</b><br>
                                Prof: Enokida E. <br>                               
                                <P ALIGN=right> <img alt="ok" src="static\images\sahomcil\cancelar.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                        </tr>
                        <tr class="success">
                            <td><b>10:00<br>
                                    ----<br>
                                    11:00
                                </b></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td>cod. materia: 102<br>
                                <b>PROGRAMACION</b><br>
                                Prof: Ramos P. <br>                               
                                <P ALIGN=right> <img alt="ok" src="static\images\sahomcil\cancelar.png" /></p></td>
                        </tr>
                        <tr class="success">
                            <td><b>11:00<br>
                                    ----<br>
                                    12:00
                                </b></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td><P ALIGN=center> <img alt="ok" src="static\images\sahomcil\mas.png" /></p></td>
                            <td>cod. materia: 102<br>
                                <b>PROGRAMACION</b><br>
                                Prof: Ramos P. <br>                               
                                <P ALIGN=right> <img alt="ok" src="static\images\sahomcil\cancelar.png" /></p></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br></br>
        <!-- aca hay una serie de DIV'S ocupando 3 columnas cada una de ellas y 3 columnas en offset     -->
        <div class="row">
            <div class="span3 offset3" style="min-height: 100px">

            </div>
            <div class="span3" style="min-height: 100px">

            </div>
            <div class="span3" style="min-height: 100px">
                <button>
                    <b>IMPRIMIR</b>
                </button>
            </div>



        </div>

        <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
