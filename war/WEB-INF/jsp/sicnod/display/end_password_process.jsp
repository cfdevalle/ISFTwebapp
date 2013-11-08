<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController, org.isft.logic.updater.AbmAlumno"%>
<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>

<script src="static/js/sicnod/login.js" type="text/javascript"></script>

<%
	String txt_mensaje = "";
	String legajo = request.getParameter("hid_legajo");
	String pass_1_fp = request.getParameter("pass_1_fp");
	String pass_2_fp = request.getParameter("pass_2_fp");

	if (pass_1_fp == null || pass_1_fp.equals("")) {
		txt_mensaje = "pass_1_incompleto";
	}else if (pass_2_fp == null || pass_2_fp.equals("")) {
		txt_mensaje = "pass_2_incompleto";
	} else {
		Alumnos alumno = new Alumnos();
		alumno.setLegajo(Integer.parseInt(legajo));
		alumno.setPwd(pass_1_fp);

		ValidarUsuario validarUsuario = new ValidarUsuario();

		if (validarUsuario.isUsuarioValidoByLegajo(alumno)) {
			//validarUsuario.updatePasswordUsuario(alumno);
			AbmAlumno abmAlumno = new AbmAlumno();
			abmAlumno.updatePasswordUsuario(alumno);
			txt_mensaje = "ok";
		} else {
			txt_mensaje = "legajo_invalido";
		}
	}
	if (!txt_mensaje.equals("ok")) {
	%>
		<script>
			goPageNoLogin("3004&result_forgot=<%= txt_mensaje%>");
		</script>
	<% }%>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-content">
			<form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
			   <fieldset>
				   <legend>Cambiaste tu contrase&ntilde;a!</legend>
				   <p>Ahora puedes loguearte con tu nueva contrase&ntilde;a.
				   </p>
			   </fieldset>
		   </form>
        </div>
    </div>
</div>

