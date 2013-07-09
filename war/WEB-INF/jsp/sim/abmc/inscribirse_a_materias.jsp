<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Sistema de Inscripcion a Materias</title>
		<script type="text/javascript" src="js/desabilitar.js"></script>
		<script type="text/javascript" src="js/confirmar_inscripcion.js"></script>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
               
            	<ul class="nav nav-tabs">
                    <li class="active"><a href="modulo.go?codPage=1002">inscripcion a materias</a></li>
                    <li >              <a href="modulo.go?codPage=1003">modificar inscripcion</a></li>
                    <li>               <a href="modulo.go?codPage=1004">eliminar materias inscriptas</a></li>
                </ul>

            
            </div>
            </div>
            <div class="row">
                <div class="span12">
				
					
					<form method="post" action="modulo.go?codPage=1005">
	
					<table border="1">
						<tr>
							<td>Cod. Mat.</td>
							<td>Materia</td>			
							<td>Condición</td>			
							<td>Modalidad</td>			
							<td>Curso y Turno</td>			
							<td>Selección</td>
						</tr>
		
						<tr>
							<td>102</td>
							<td>Algebra</td>
							<td> <select id="slct1"><option>Recurso</option><option>Coherte</option></Select> </td>
							<td> <select id="slct2"><option>Presencial</option><option>No Presencial</option></Select> </td>
							<td> <select id="slct3"><option>1ºA Mañana</option><option>1ºA Tarde</option><option>1ºA Noche</option><option>1ºB Mañana</option><option>1ºA Noche</option></Select> </td>
							<td> <input type="button" value="Descartar" onclick="desabilitar()"> </td>
						</tr>
					</table>
					<br/>
					
					<table>
						<tr>
							<td><input type="submit" value="Inscribirse" id="insc" onclick="confirmar_inscripcion()"></form></td>
							<td><form method="post" action="modulo.go?codPage=1001"> <input type="submit" value="Cancelar"></form></td>
						<tr>
					</table>
				
                </div>
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
