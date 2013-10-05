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

<%
	String txt_mensaje = "";
	String legajo = request.getParameter("legajo");
	//legajo = "4455";
	String pass_1_fp = request.getParameter("pass_1_fp");
	//pass_1_fp = "333";
	String pass_2_fp = request.getParameter("pass_2_fp");
	//pass_2_fp = "333";

	if (pass_1_fp == null || pass_1_fp.equals("")) {
		txt_mensaje = "pass_1_incompleto";
	}else if (pass_2_fp == null || pass_2_fp.equals("")) {
		txt_mensaje = "pass_2_incompleto";
	} else {
		Alumnos alumno = new Alumnos();
		int aux = Integer.parseInt(legajo);
		alumno.setLegajo(aux);
		alumno.setPwd(pass_1_fp);

		ValidarUsuario validarUsuario = new ValidarUsuario();

		if (validarUsuario.isUsuarioValidoByLegajo(alumno)) {
			validarUsuario.updatePasswordUsuario(alumno);
			txt_mensaje = "ok";
		} else {
			txt_mensaje = "legajo_invalido";
		}
	}
	if (!txt_mensaje.equals("ok")) {
	%>
		<script>
			console.log("me voy a la 3004");
			goPage("3004&result_forgot=<%= txt_mensaje%>");
			//var url = "index.jsp?result_login=<%= txt_mensaje%>";
			//window.location.href = url;
		</script>
	<% }%>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-content">

                 <form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
                    <fieldset>
                        <legend>Cambiaste tu contraseña!</legend>
                        <p>Ahora puedes loguearte con tu nueva contraseña.
                        </p>
                    </fieldset>
                </form>
        </div>
    </div>
</div>

