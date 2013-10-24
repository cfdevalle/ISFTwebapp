<%-- 
    Document   : eliminarMateria
    Created on : 16-sep-2013, 18:18:57
    Author     : Carolina
--%>

<%@page import="java.util.HashMap"%>
<%@page import="org.isft.logic.updater.AbmHorario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">


<%
//recibo parametros
String dia= request.getParameter("dia");
String hora= request.getParameter("hora");
String carrera= request.getParameter("carrera");
String curso= request.getParameter("curso");
String materia= request.getParameter("materia");
//instancio objeto ambhorario (Clase que se encarga de realizar las altas y bajas)
AbmHorario ah = new AbmHorario();
//creo el hashmap para pasarselo a abmhorario
HashMap hm = new HashMap();
hm.put("dia",dia);
hm.put("hora",hora);
hm.put("carrera",carrera);
hm.put("curso",curso);
hm.put("materia",materia);
//realizo la consuta
ah.delete(hm);
//mensaje de resultado
out.println("<p class=\"text-succes\">Eliminada con exito</p><br/><button class=\"btn btn-primary\" data-dismiss=\"modal\" aria-hidden=\"true\" onclick=\"recargar();\">Aceptar</button>");
%>
 