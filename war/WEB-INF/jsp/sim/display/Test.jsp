<%@include file="../display/files.jsp" %>

<div class="row-fluid">
	<div class="span12"> 
		<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)">Informacion</a></li>
            <li><a href="javascript:goPage(1002)">Inscripcion a Materias</a></li>
            <li><a href="javascript:goPage(1003)">Modificar Inscripcion</a></li>
            <li><a href="javascript:goPage(1004)">Eliminar Materias Inscriptas</a></li>
			<li class="active"><a href="javascript:goPage(1006)">TEST</a></li>
        </ul>
    </div>
</div>

<div id="w" class="container center">
	<div class="row-fluid">
		<div class="span12">
			<h2>Test Mode</h2>
			<hr>
			
			<%
			Alumnos alumno=new Alumnos();
			alumno=(Alumnos)request.getSession(false).getAttribute("alumno");
			%>
			
			USUARIO RECUPERADO DE LA SESION ACTUAL: <%=alumno.getLegajo()%></br>
			PASSWORD RECUPERADO DE LA SESION ACTUAL: <%=alumno.getPwd()%></br>
			
			</br>
			EJEMPLO DE LLAMADA AL TLD GrillaInscripcionMaterias</br>
			Grilla de Materias Para Inscribirse Con Bootstrap: </br>
			<tag:GrillaInscripcionMaterias usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			</br>
			
			</br>
			EJEMPLO DE LLAMADA AL TLD GrillaModificarInscripcion</br>
			Grilla de Materias a Modificar Con Bootstrap: </br>
			<tag:GrillaModificarInscripcion usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			</br>
			
			</br>
			EJEMPLO DE LLAMADA AL TLD GrillaEliminarInscripcion</br>
			Grilla de Materias a Eliminar Con Bootstrap: </br>
			<tag:GrillaEliminarInscripcion usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			</br>
			
			</br>
			EJEMPLO DE LLAMADA AL TLD GrillaMateriasInscriptas</br>
			Grilla de Materias Ya Inscriptas Con Bootstrap: </br>
			<tag:GrillaMateriasYaInscriptas usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			</br>
							
		</div>
	</div>
</div>