<%-- 
    Document   : altaHorario
    Created on : 10-sep-2013, 17:06:40
    Author     : Carolina
--%>

<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.updater.AbmHorario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    //recibo parametros
String carrera=(String)request.getParameter("carrera");
String hora_desde=(String)request.getParameter("hora");
String curso=(String)request.getParameter("curso");
String dia=(String)request.getParameter("dia");
String materia=(String)request.getParameter("materia");
String profesor=(String)request.getParameter("profesor");
// instancio objeto abmhorario (el que se encarga de hacer la alta)
AbmHorario ah = new AbmHorario();
//creo hashmap para pasaje de parametros
HashMap parameters= new HashMap();
parameters.put("carrera",carrera);
parameters.put("curso",curso);
parameters.put("hora_desde",hora_desde);
parameters.put("dia",dia);
parameters.put("materia",materia);
parameters.put("profesor",profesor);

try{
//realizo la consulta a la bd
ah.insert(parameters);
//mensaje re resultado positivo
out.println("<p class=\"text-success\">Materia añadida correctamente</p><br/>");
out.println("<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\" onclick=\"recargar();\">Aceptar</button>");

}catch(Exception e){
System.out.println("error"+e);
//mensaje de resultado negativo
out.print("se ha producido un error en la carga por favor pongase en contacto con el desarrollador");

}

%>
