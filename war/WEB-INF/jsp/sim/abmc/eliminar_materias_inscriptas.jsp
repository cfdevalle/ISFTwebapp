<%@include file="../display/files.jsp" %>

<div class="row-fluid">
	<div class="span12"> 
       	<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)">Informacion</a></li>
            <li><a href="javascript:goPage(1002)">Inscripcion a Materias</a></li>
            <li><a href="javascript:goPage(1003)">Modificar Inscripcion</a></li>
            <li class="active"><a href="javascript:goPage(1004)">Eliminar Materias Inscriptas</a></li>
        </ul>
	</div>
</div>

<div id="w" class="container center">
	<div class="row-fluid">
		<div class="span12">
			<h2>Puede eliminar materias a las cuales no desee cursar</h2>
			<hr>
			<table class="table zebra-striped table-hover table-bordered table-condensed">
				<thead>
					<tr>
						<th>Cod. Mat.</th>
						<th>Materia</th>			
						<th>Condición</th>			
						<th>Modalidad</th>			
						<th>Curso y Turno</th>			
						<th>Selección</th>
					</tr>
				</thead>
				
				<tbody>
					<tr class="success">
						<td>102</td>
						<td>Algebra</td>
						<td> <select id="slot1"><option>Coherte</option></Select> </td>
						<td> <select id="slot2"><option>Presencial</option></Select> </td>
						<td> <select id="slot3"><option>1ºA Mañana</option></Select> </td>
						<td> <button class="btn" onclick="javascript:desabilitarFila()">Descartar</button></td>
					</tr>
				</tbody>
			</table>
			<br/>
			
			<div align="right">
				<a href="#mainMenu" data-toggle="modal" class="btn">Cancelar</a>
				<a href="#confirmarCambios" data-toggle="modal" class="btn btn-primary">Guardar Cambios</a>
			</div>
		</div>
	</div>
</div>