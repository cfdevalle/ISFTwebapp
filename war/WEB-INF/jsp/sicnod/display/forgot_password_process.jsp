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

<%
	
	String txt_mensaje = "";
	String legajo = request.getParameter("legajo");
	if (legajo == null || legajo.equals("")) {
		txt_mensaje = "legajo_incompleto";
	} else {
		Alumnos alumno = new Alumnos();
		int aux = Integer.parseInt(legajo);
		alumno.setLegajo(aux);

		ValidarUsuario validarUsuario = new ValidarUsuario();

		if (validarUsuario.isUsuarioValidoByLegajo(alumno)) {
			txt_mensaje = "ok";
		} else {
			txt_mensaje = "legajo_invalido";
		}
	}
	if(request.getSession(false).getAttribute("alumno")!=null){ 
		txt_mensaje = "ok";
	}
	if (!txt_mensaje.equals("ok")) {
	%>
		<script>
			goPageNoLogin("3003&result_forgot=<%= txt_mensaje%>");
		</script>
	<% }%>
<div class="row-fluid">
	<div class="box span12">		
		<div class="box-content">
			<form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
				<%
				if(request.getSession(false).getAttribute("alumno")!=null){ 
					Alumnos alumno = (Alumnos)request.getSession(false).getAttribute("alumno");  
					%>
					<input type="hidden" name="hid_legajo" id="hid_legajo" value="<%= alumno.getLegajo() %>" />
					<%
				}else{ %>
					<input type="hidden" name="hid_legajo" id="hid_legajo" value="<%= legajo%>" />
				<% } %>
				<fieldset>
					<legend>Cambiar contrase&ntilde;a?</legend>
					<div class="control-group ">
						<label class="control-label" for="inputWarning">Ingrese su nueva contrase&ntilde;a</label>
						<div class="controls">
							<input type="password" name="pass_1_fp" id="pass_1_fp" value="" />
						</div>
					</div>       
					<div class="control-group ">
						<label class="control-label" for="inputWarning">reingrese la nueva contrase&ntilde;a</label>
						<div class="controls">
							<input type="password" name="pass_2_fp" id="pass_2_fp" value="" />
						</div>
					</div> 
					<div class="control-group ">
						<label class="control-label" for="inputWarning">&nbsp;</label>
						<div class="controls">
							<button type="button" name="recovery" class="btn btn-primary"  onclick="sendFormForgot();">Enviar</button>
						</div>
				</fieldset>
			</form>
        </div>
    </div>
</div>
<script type="text/javascript">
	function sendFormForgot() {
		if (document.getElementById("pass_1_fp").value == "" || document.getElementById("pass_2_fp").value == "") {
			gotTop();
			Notifier.warning("Revise las contrase&ntilde;as ingresadas");
			return false;
		}
		if (document.getElementById("pass_1_fp").value != document.getElementById("pass_2_fp").value) {
			gotTop();
			Notifier.warning("Las contrase&ntilde;as ingresadas deben coincidir.");
			return false;
		} else {
			goPageNoLogin("3009&hid_legajo="+document.getElementById("hid_legajo").value+"&pass_1_fp="+document.getElementById("pass_1_fp").value+"&pass_2_fp="+document.getElementById("pass_2_fp").value);
			//document.getElementById("FormForgot").submit();
			return false;
		}
	}
</script>
