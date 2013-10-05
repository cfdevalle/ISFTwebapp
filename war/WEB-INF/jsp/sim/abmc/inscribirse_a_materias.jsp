<%@include file="../display/files.jsp" %>

<div class="row-fluid">
    <div class="span12"> 
      	<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)"><i class="icon-info-sign icon-black"></i> Informacion</a></li>
            <li class="active"><a href="javascript:goPage(1002)"><i class="icon-pencil icon-black"></i> Inscripcion a Materias</a></li>
            <li><a href="javascript:goPage(1003)"><i class="icon-trash icon-black"></i> Eliminar Materias Inscriptas</a></li>
        </ul>
    </div>
</div>

<div id="w" class="container center">
	<div class="row-fluid">
		<div class="span12">
			<h2>Materias a las cuales puede inscribirse</h2>
			<hr>
			<tag:GrillaInscripcionMaterias usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			<div id="div_resultado"/>
		</div>
	</div>
</div>