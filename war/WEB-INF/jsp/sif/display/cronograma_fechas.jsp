<script type="text/javascript" src="static/js/sif/cronograma_fechas.js"></script>

<style>
    .table td {
        text-align: center;   
    }
</style>

            <div class="row-fluid">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li><a href="javascript:goPage(2001)">Bienvenido</a></li>
                    <li class="active"><a href="javascript:goPage(2003)">Cronograma Finales</a></li>
                    <li><a href="javascript:goPage(2004)">Inscripcion a Finales</a></li>
                    <li><a href="javascript:goPage(2002)">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            <div class="span12">
                    <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
                    <h1 align="center"><u>Cronograma Finales</u></h1>
                    <br>
                    <br>
                        <tag:FechaFinales/>
                </div>
                    
