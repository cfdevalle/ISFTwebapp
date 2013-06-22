<%@page import="java.util.*" %>
<% String usr=request.getParameter("txt_usuario");
     String pass=request.getParameter("txt_password");
%>
usuario logueado = <%= usr %>
password = <%= pass %>


