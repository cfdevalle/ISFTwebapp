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
                <SELECT NAME="carrera" SIZE=1 onChange="javascript:alert('prueba');"> 
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
                <SELECT NAME="curso" SIZE=1 onChange="javascript:alert('prueba');"> 
                    <OPTION VALUE="1ºB">"1ºA"</OPTION>
                    <OPTION VALUE="2ºA">"2ºA"</OPTION>
                    <OPTION VALUE="2ºB">"2ºB"</OPTION>
                    <OPTION VALUE="3ºA">"3ºA"</OPTION> 
                </SELECT> 
            </div>
        </div>
        <!-- la tabla de informacion de materias/horas/profesor/dia ocupando 12 columnas     -->
        <div class="row">
            <div class="span12" style="min-height: 100px">

                <TABLE BORDER="10" CELLPADDING=10 CELLSPACING=0 WIDTH="100%">
                    <TR><TH ALIGN=center BGCOLOR="green">CODIGO DE MATERIA</TH>

                        <TD ALIGN=center BGCOLOR="green">MATERIA</TD> <TD ALIGN=center BGCOLOR="green">DIA Y HORA</TD> <TD ALIGN=center BGCOLOR="green">PROFESOR</TD></TR>

                    <TR><TH ALIGN=center>1001</TH>

                        <TD ALIGN=center>Algebra</TD> <TD ALIGN=center>Lunes 10:00hs-12:00hs/Miercoles 08:00hs-10:00hs</TD> <TD ALIGN=center>Trimarcher</TD></TR>

                    <TR><TH ALIGN=center>1002</TH>

                        <TD ALIGN=center>Analisis Matematico</TD> <TD ALIGN=center>Jueves 10:00hs-12:00hs</TD> <TD ALIGN=center>Enokida</TD></TR>

                    <TR><TH ALIGN=center>1003</TH>

                        <TD ALIGN=center>Programacion</TD> <TD ALIGN=center>Jueves 08:00hs-10:00hs/Viernes 10:00hs-12:00hs</TD> <TD ALIGN=center>Ramos</TD></TR>                                                         

                </TABLE>
            </div>
        </div>
        <br></br>
        <!-- aca hay una serie de DIV'S ocupando 3 columnas cada una de ellas y 3 columnas en offset     -->
        <div class="row">
            <div class="span9 offset3">
            </div>

            <div class="span3" style="min-height: 100px">
                <button>
                    <b>MODIFICAR</b>
                </button>
            </div>

            <div class="span3" style="min-height: 100px">
                <button>
                    <b>AGREGAR</b>
                </button>
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
