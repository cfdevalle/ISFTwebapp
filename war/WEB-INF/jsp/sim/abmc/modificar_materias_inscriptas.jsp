<%@include file="../display/files.jsp" %>

<div class="row-fluid">
    <div class="span12"> 
       	<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)"><i class="icon-info-sign icon-black"></i> Informacion</a></li>
            <li><a href="javascript:goPage(1002)"><i class="icon-pencil icon-black"></i> Inscripcion a Materias</a></li>
            <li class="active"><a href="javascript:goPage(1005)">Modificar Inscripcion</a></li>
            <li><a href="javascript:goPage(1003)">Eliminar Materias Inscriptas</a></li>
        </ul>
	</div>
</div>

java.lang.System.getProperty("user.dir")+"static/images/sim//comprobante_de_inscripcion.jpg"
user.dir es el directorio donde esta el programa .jar ejecutando

"C:\\Proyectos\\Java\\ISFTwebapp\\war\\static\\images\\sim\\comprobante_de_inscripcion.jpg"

$P{p_ruta_imagen}+"\static\images\sim\comprobante_de_inscripcion.jpg"

<br/>
<%

String ruta=request.getRealPath("");

%>
RUTA DEL SERVIDOR: <%=ruta%>
<br/>

<div id="w" class="container center">        
	<div class="row-fluid">
		<div class="span12" >
			<h2>Seleccione los campos que desea editar</h2>
			<hr>
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
						<td> <select id="slot1"><option>Recurso</option><option>Coherte</option></Select> </td>
						<td> <select id="slot2"><option>Presencial</option><option>No Presencial</option></Select> </td>
						<td> <select id="slot3"><option>1ºA Mañana</option><option>1ºA Tarde</option><option>1ºA Noche</option><option>1ºB Mañana</option><option>1ºA Noche</option></Select> </td>
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