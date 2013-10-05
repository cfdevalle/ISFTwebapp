<%@include file="../display/files.jsp" %>

<div class="row-fluid">
	<div class="span12"> 
       	<ul class="nav nav-tabs">
			<li><a href="javascript:goPage(1001)"><i class="icon-info-sign icon-black"></i> Informacion</a></li>
            <li><a href="javascript:goPage(1002)"><i class="icon-pencil icon-black"></i> Inscripcion a Materias</a></li>
            <li><a href="javascript:goPage(1003)"><i class="icon-trash icon-black"></i> Eliminar Materias Inscriptas</a></li>
			<li class="active"><a href="javascript:goPage(1004)"><i class="icon-print icon-black"></i> Comprobante de Inscripcion</a></li>
        </ul>
    </div>
</div>

<%
FechaHora fechahora=new FechaHora();
Alumnos alumno=new Alumnos();
alumno=(Alumnos)request.getSession(false).getAttribute("alumno");
String p_ruta_imagen=request.getRealPath("");
%>

<div id="w" class="container center">
	<div class="row-fluid">
		<div class="span12">
			<tag:GrillaMateriasYaInscriptas usuario="<%=(Alumnos)request.getSession(false).getAttribute(\"alumno\")%>"/>
			<br/>
			
			<div align="right">
				<a href="comprobanteDeInscripcion.rpt?cod=1001&param=p_estudiante=<%=alumno.getApellido()%> <%=alumno.getNombre()%>@p_legajo=<%=alumno.getLegajo()%>@p_cod_carrera=<%=alumno.getCarrera().getCod_carrera()%>@p_nombre_carrera=<%=alumno.getCarrera().getNombre()%>@p_fecha=<%=fechahora.getFecha()%>@p_hora=<%=fechahora.getHora()%>@p_anio_actual=<%=fechahora.getAnioActual()%>@p_cod_comprobante=<%=alumno.getCarrera().getCod_carrera()%>-<%=alumno.getLegajo()%>-<%=fechahora.getFechaIso()%>-<%=fechahora.getHoraIso()%>@p_ruta_imagen=<%=p_ruta_imagen%>&file=ComprobanteDeInscripcion"><img src="static/images/sim/pdf.gif" title="Descargar o Imprimir Archivo PDF" alt="Descargar o Imprimir Archivo PDF"/></a>
				<a href="#salirDeComprobante" data-toggle="modal" class="btn btn-primary"><i class="icon-home icon-white"></i> Volver al Menu</a>
			</div>
			
		</div>
	</div>
</div>