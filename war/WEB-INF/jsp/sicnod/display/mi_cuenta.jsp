
<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController"%>
<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>

<style>
	#f{
		width: 630px;
		margin: 0 auto;
		float:none;

	}
	.body{
		position:relative;
		float: left;
		width:630px;
		position:relative;
		margin-top:150px !important;
	}
	.table{
		text-align:center;
	}
	fieldset {

		position: relative;

	}
	.t_caption{

		font-weight: bold;
		float: left;
		font-size: 25px;
		margin-bottom: 15px;
	}
</style>
<script src="static/js/sicnod/login.js" type="text/javascript"></script>


	<div class="row-fluid">
		<div class="box span12">		
			<div class="box-content">
				<%
				if (request.getSession(false).getAttribute("alumno") != null) {
					Alumnos alumno = (Alumnos) request.getSession(false).getAttribute("alumno");
					String SexoH = (alumno.getSexo()== "H") ? "checked='checked'" : "";
					String SexoM = (alumno.getSexo() == "M") ? "checked='checked'" : "";
					
					int paramComboAlumno = 2;
				%>
					Bienvenido <%= alumno.getNombre()%> <%= alumno.getApellido()%><br />
				<form class="form-horizontal" action="http://localhost:8080/ISFTwebapp/encabezado.go?codPage=3010" method="post" name="FormAlumno" id="FormAlumno" >
				<!--<form class="form-horizontal" action="javascript:goPage(3010)" method="post" name="FormAlumno" id="FormAlumno" >-->
					<fieldset>
						<legend>Mis Datos</legend>
						<div class="control-group ">
							<label class="control-label" for="inputWarning">TAG EJ</label>
							<div class="controls">
								
								<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
								<tag:ComboAlumnos legajo="2"/>
								
								
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Legajo</label>
							<div class="controls">
								<strong><%= alumno.getLegajo()%></strong>
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Nombre</label>
							<div class="controls">
								<input type="Nombre" name="Nombre" id="pass_2_fp" value="<%= alumno.getNombre()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Apellido</label>
							<div class="controls">
								<input type="Apellido" name="Apellido" id="pass_2_fp" value="<%= alumno.getApellido()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Direccion</label>
							<div class="controls">
								<input type="Direccion" name="Direccion" id="pass_2_fp" value="<%= alumno.getDireccion()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Localidad</label>
							<div class="controls">
								<input type="Localidad" name="Localidad" id="pass_2_fp" value="<%= alumno.getLocalidad()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Codigo Postal</label>
							<div class="controls">
								<input type="text" name="CP" id="CP" value="<%= alumno.getCp()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Sexo</label>
							<div class="controls">
								<input type="radio" name="Sexo" value="H" <%= SexoH %> /> Hombre<br />
								<input type="radio" name="Sexo" value="M" <%= SexoM %> /> Mujer<br />
							</div>
						</div>       
						
						<div class="control-group ">
							<label class="control-label" for="inputWarning">&nbsp;</label>
							<div class="controls">
								<button type="button" name="updateInfo" class="btn btn-primary"   onclick="sendForm();">Enviar</button>
							</div>
					</fieldset>
				</form>
				<% }else{ %>
					No tiene permisos para ver esta seccion.
				<% } %>
			</div>
		</div>
	</div>
<script type="text/javascript">
function sendForm() {
	document.getElementById("FormAlumno").submit();
	return true;
}
</script>
