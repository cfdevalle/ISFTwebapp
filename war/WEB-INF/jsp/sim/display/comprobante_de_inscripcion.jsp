<%@include file="../display/files.jsp" %>

<%
FechaHora tiempo= new FechaHora();
String fecha=tiempo.getFecha();
String hora=tiempo.getHora();
%>

<div class="row-fluid">
	<div class="span12"> 
       	<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)">Informacion</a></li>
            <li><a href="javascript:goPage(1002)">Inscripcion a Materias</a></li>
            <li><a href="javascript:goPage(1003)">Modificar Inscripcion</a></li>
            <li><a href="javascript:goPage(1004)">Eliminar Materias Inscriptas</a></li>
			<li class="active"><a href="javascript:goPage(1005)">Comprobante de Inscripcion</a></li>
        </ul>
    </div>
</div>

<div id="w" class="container center">
	<div class="row-fluid">
		<div class="span12">
			<div class="printable">
				<h3>COMPROBANTE DE INSCRIPCION Nº242</h3>
				<hr>
				<strong>Carrera:</strong> Tecnicatura Superior en Analisis de Sistemas</br>
				<strong>Estudiante:</strong> Aldana Ojeda.</br>
				<strong>Nº Legajo:</strong> 6999</br>
				<strong>Fecha:</strong> <%= fecha%> <strong>Hora:</strong> <%= hora%></br>
				
				<h3>Tabla de materias inscriptas</h3>
				<table class="table zebra-striped table-hover table-bordered table-condensed">
					<thead>
						<tr>
							<th>Cod. Mat.</th>
							<th>Materia</th>			
							<th>Condición</th>			
							<th>Modalidad</th>			
							<th>Curso y Turno</th>
						</tr>
					</thead>
					
					<tbody>
						<tr class="success">
							<td>102</td>
							<td>Algebra</td>
							<td>Recurso</td>
							<td>Presencial</td>
							<td>1ºA Mañana</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br/>
			
			<div align="right">
				<a href="javascript:pdf()"><img src="static/images/sim/pdf.gif" title="Descargar Archivo PDF" alt="Descargar Archivo PDF"/></a>
				<a href="javascript:printing()"><img src="static/images/sim/printing.png" title="Imprimir Comprobante de Inscripcion" alt="Imprimir Comprobante de Inscripcion"/></a>
				<a href="#salirDeComprobante" data-toggle="modal" class="btn btn-primary">Volver al Menu</a>
			</div>		
		</div>
	</div>
</div>