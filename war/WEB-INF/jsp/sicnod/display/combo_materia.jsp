<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/WEB-INF/tld/comboMaterias.tld" prefix="materias" %>
<div class="control-group">
	<label class="control-label" for="inputMateria">Materia: </label>
	<div class="controls">
		<%
		String carrera = (String) request.getParameter("carrera");
		%>
		<materias:ComboMaterias carrera="<%= carrera %>" curso="TODOS"></materias:ComboMaterias>
	</div>
</div>
<div class="control-group" id="comboTurno"></div>

