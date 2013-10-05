<%-- 
    Document   : altaHorario
    Created on : 10-sep-2013, 17:06:40
    Author     : Ariel
--%>

<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.updater.AbmHorario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
String carrera=(String)request.getParameter("carrera");
String hora_desde=(String)request.getParameter("hora");
String curso=(String)request.getParameter("curso");
String dia=(String)request.getParameter("dia");
String materia=(String)request.getParameter("materia");
String profesor=(String)request.getParameter("profesor");
System.out.println("materia "+materia);

AbmHorario ah = new AbmHorario();
HashMap parameters= new HashMap();

parameters.put("carrera",carrera);
parameters.put("curso",curso);
parameters.put("hora_desde",hora_desde);
parameters.put("dia",dia);
parameters.put("materia",materia);
parameters.put("profesor",profesor);
try{
ah.insert(parameters);
out.println("<p class=\"text-success\">Materia añadida correctamente</p><br/>");
out.println("<button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\" onclick=\"recargar();\">Aceptar</button>");

}catch(Exception e){
System.out.println("error"+e);
out.print("se ha producido un error en la carga por favor pongase en contacto con el desarrollador");

}

%>
