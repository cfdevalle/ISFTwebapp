<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap"%>
<%
/**
 * FIXME: HAY QUE HACER SE TOMES ESTOS VALORES POR COFIGURACION DE CADA PC
 */
HashMap paramSQL = new HashMap();
paramSQL.put("origen_datos","isftwebappfinal");
paramSQL.put("user","root");
paramSQL.put("password","");


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
    }else{
        txt_mensaje = "datos_invalidos";
    }
}
%>
<html>
<body>
<script>
var url = "http://localhost:8080/ISFTwebapp/index.jsp?result_login=<%= txt_mensaje %>";
window.location.href = 'modulo.go?codPage=6000';
</script>
</body>
</html>
