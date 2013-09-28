<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>
<%

String origen_datos = "";
String password = "";
String user = "";
ResourceBundle resbound=ResourceBundle.getBundle("web.conexionDb");
try{
    origen_datos=resbound.getString("origen_datos");
    user=resbound.getString("user");
    password=resbound.getString("password");
}catch(Exception exc){
    System.out.println("MISSING EXCEPTION:" + exc.toString());
    throw new ServletException("Reporte no encontrado");
}

HashMap paramSQL = new HashMap();
paramSQL.put("origen_datos",origen_datos);
paramSQL.put("user",user);
paramSQL.put("password",password);

String txt_usuario  = request.getParameter("txt_usuario");
String txt_password = request.getParameter("txt_password");

String txt_mensaje = "";

if( txt_usuario==null && txt_password==null ||  txt_usuario.equals("") && txt_password.equals("") ){
    txt_mensaje = "todo_incompleto";
}else if(txt_usuario.equals(null) || txt_usuario.trim().equals("")){
    txt_mensaje = "usuario_incompleto";
}else if(txt_password.equals(null) || txt_password.trim().equals("")){
    txt_mensaje = "password_incompleto";
}else{
    Alumnos alumno = new Alumnos();
    int aux = Integer.parseInt(txt_usuario);
    alumno.setLegajo(aux);
    //alumno.setLegajo(Integer.parseInt(txt_usuario));
    alumno.setPwd(txt_password);

    ValidarUsuario validarUsuario = new ValidarUsuario();
    
    if(validarUsuario.isUsuarioValidoBySql(alumno, paramSQL)){
        txt_mensaje = "ok";
        //validarUsuario.getFullUsuario(alumno, paramSQL);
        Alumnos FullUsuario = validarUsuario.getFullUsuario(alumno, paramSQL);
        request.getSession(false).setAttribute("alumno", FullUsuario);
        %>
        <script>window.location.href = 'modulo.go?codPage=6020';</script>
        <%
        
    }else{
        txt_mensaje = "datos_invalidos";%>
        <script>
                    var url = "http://localhost:8080/ISFTwebapp/index.jsp?result_login=<%= txt_mensaje %>";
                    window.location.href =url;
        </script>
    <%
    }
}
%>
