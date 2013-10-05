<head><%@include file="../../includes/metas_inc.jsp" %></head>
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
			String txt_mensaje = "";
			if (request.getSession(false).getAttribute("alumno") != null) {
				Alumnos alumnoSession = (Alumnos) request.getSession(false).getAttribute("alumno");
				String Nombre = request.getParameter("Nombre");
				String Apellido = request.getParameter("Apellido");
				String Direccion = request.getParameter("Direccion");
				String Localidad = request.getParameter("Localidad");
				String CP = request.getParameter("CP");
				String Sexo = request.getParameter("Sexo");
			
				Alumnos alumno = new Alumnos();
				int legajo = alumnoSession.getLegajo();
				alumno.setLegajo(legajo);
				alumno.setNombre(Nombre);
				alumno.setApellido(Apellido);
				alumno.setLocalidad(Localidad);
				alumno.setDireccion(Direccion);
				alumno.setSexo(Sexo);
				alumno.setCp(CP);

				ValidarUsuario validarUsuario = new ValidarUsuario();

				if (validarUsuario.isUsuarioValidoByLegajo(alumno)) {
					validarUsuario.updateUsuario(alumno);
					request.getSession(false).setAttribute("alumno", alumno);
					txt_mensaje = "ok";
				} else {
					txt_mensaje = "legajo_invalido";
				}
			%>
			<script>
				console.log("me voy a la 3007&result_forgot=<%= txt_mensaje%>");
				goPage("3007&result_forgot=<%= txt_mensaje%>");
			</script>
				(PROCESO UPDATE ALUMNO)
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
