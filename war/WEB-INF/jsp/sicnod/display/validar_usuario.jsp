<head><%@include file="../../includes/metas_inc.jsp" %></head>
<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController"%>
<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>
<%
/*
    String origen_datos = "";
    String password = "";
    String user = "";
    ResourceBundle resbound = ResourceBundle.getBundle("web.conexionDb");
    try {
        origen_datos = resbound.getString("origen_datos");
        user = resbound.getString("user");
        password = resbound.getString("password");
    } catch (Exception exc) {
        System.out.println("MISSING EXCEPTION:" + exc.toString());
        throw new ServletException("Reporte no encontrado");
    }

    HashMap paramSQL = new HashMap();
    paramSQL.put("origen_datos", origen_datos);
    paramSQL.put("user", user);
    paramSQL.put("password", password);
*/
    String txt_usuario = request.getParameter("txt_usuario");
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
        //alumno.setLegajo(Integer.parseInt(txt_usuario));
        alumno.setPwd(txt_password);

        ValidarUsuario validarUsuario = new ValidarUsuario();

        if (validarUsuario.isUsuarioValidoBySql(alumno)) {
            txt_mensaje = "ok";
            Alumnos fullUsuario = validarUsuario.getFullUsuario(alumno);
            request.getSession(false).setAttribute("alumno", fullUsuario);

            if (fullUsuario.getCarreras().size() > 1) {
%>


<div class="modal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>Seleccione Carrera</h3>
    </div>
    <div class="modal-body">
        <form name="form" method="post" action="modulo.go?codPage=6020">
            <SELECT  NAME="cbo_carrera"> 
                <%
                               for (int i = 0; i < fullUsuario.getCarreras().size(); i++) {
                                   Carrera carrera = (Carrera) fullUsuario.getCarreras().get(i);%> 
                <OPTION value="<%=carrera.getCod_carrera()%>"><%=carrera.getNombre()%></OPTION>  

                <%}%> 

            </SELECT> 
            <input class="btn btn-large btn-primary" type="submit" value="aceptar">
        </form>
    </div>

</div>  

<%} else {
    //fullUsuario.setCarrera((Carrera)fullUsuario.getCarreras().get(0)); 
    fullUsuario.setCarrera(new Carrera());
    request.getSession(false).setAttribute("alumno", fullUsuario);
%> <script>window.location.href = 'modulo.go?codPage=6020';</script>
<%}%> 


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
