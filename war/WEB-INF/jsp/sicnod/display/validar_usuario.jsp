<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Usuario, org.isft.logic.validator.ValidarUsuario, java.util.Vector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h2>Ejercicio 9</h2>
<%
String txt_usuario=request.getParameter("txt_usuario");
String txt_password=request.getParameter("txt_password");

if( txt_usuario.equals(null) && txt_password.equals(null) ||  txt_usuario.trim().equals("") && txt_password.trim().equals("") ){%>
    Complete usuario y contraseña
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_usuario.equals(null) || txt_usuario.trim().equals("")){%>
    Complete usuario
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_password.equals(null) || txt_password.trim().equals("")){%>
    Complete contraseña
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else{

    Usuario usuario = new Usuario();
    usuario.setUsuario(txt_usuario);
    usuario.setPassword(txt_password);

    ValidarUsuario validarUsuario = new ValidarUsuario();
    
    if(validarUsuario.isUsuarioValido(usuario)){ %>
        Usuario: <%= usuario.getUsuario() %><br />
        Password: <%= usuario.getPassword() %><br />
        Felicidades te has registrado con éxito!
    <% }else{ %>
        Usuario y/o password incorrectos <br />
        <%@include file="login.jsp" %>
    <% } %>

<% } %>
</body>
</html>
