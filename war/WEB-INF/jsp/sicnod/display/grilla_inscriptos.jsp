<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/WEB-INF/tld/taglib.tld" prefix="inscriptos" %>
<!DOCTYPE html>


		<%
		String carrera = (String) request.getParameter("carrera");
		String materia = (String) request.getParameter("materia");
		String turno   = (String) request.getParameter("turno");
		String lectivo = (String) request.getParameter("lectivo");
		String fecha_examen = (String) request.getParameter("fecha_examen");
		System.out.println("grilla: "+fecha_examen);
		%>
		<inscriptos:FinalesInscriptosFull carrera="<%= carrera %>" materia="<%= materia %>" turno="<%= turno %>"  lectivo="<%= lectivo %>" fechaexamen="<%= fecha_examen %>"></inscriptos:FinalesInscriptosFull>

<div class="control-group ">
	<label class="control-label" for="inputWarning">&nbsp;</label>
	<div class="controls">
		<button type="button" name="updateInfo" class="btn btn-primary" onclick="sendModalFormLibroActas();">Guardar</button>
	</div>
</div>
