<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController"%>
<%@page import="org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>
<%
    String txt_usuario  = request.getParameter("txt_usuario");
    String txt_password = request.getParameter("txt_password");

    String txt_mensaje = "";

    if (txt_usuario == null && txt_password == null || txt_usuario.equals("") && txt_password.equals("")) {
        txt_mensaje = "todo_incompleto";
    } else if (txt_usuario.equals(null) || txt_usuario.trim().equals("")) {
        txt_mensaje = "usuario_incompleto";
    } else if (txt_password.equals(null) || txt_password.trim().equals("")) {
        txt_mensaje = "password_incompleto";
    } else {
        Alumnos alumno = new Alumnos();
        int aux = Integer.parseInt(txt_usuario);
        alumno.setLegajo(aux);
        alumno.setPwd(txt_password);

        ValidarUsuario validarUsuario = new ValidarUsuario();

        if (validarUsuario.isUsuarioValido(alumno)) {
            txt_mensaje = "ok";
            Alumnos fullUsuario = validarUsuario.getFullUsuario(alumno);
            request.getSession(false).setAttribute("alumno", fullUsuario);

			fullUsuario.setCarrera(new Carrera());
		    request.getSession(false).setAttribute("alumno", fullUsuario);
			%> 
			<script>window.location.href = 'modulo.go?codPage=6020';</script>
			<%
        } else {
            txt_mensaje = "datos_invalidos";%>
			<script>
				var url = "index.jsp?result_login=<%= txt_mensaje%>";
				window.location.href = url;
			</script>
			<%
        }
    }
%>
