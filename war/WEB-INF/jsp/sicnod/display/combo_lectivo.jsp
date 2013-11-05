<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="org.isft.logic.collection.CollectionMaterias"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/WEB-INF/tld/ComboExamenes.tld" prefix="lectivo" %>
<div class="control-group" style=" max-width: 50%; float: left; ">
	<label class="control-label" for="inputMateria">Lectivo: </label>
	<div class="controls">
		<%
		String carrera = (String) request.getParameter("carrera");
		String materia = (String) request.getParameter("materia");
		String turno = (String) request.getParameter("turno");
		%>
		<lectivo:comboLectivo carrera="<%= carrera %>" materia="<%= materia %>" turno="<%= turno %>" ></lectivo:comboLectivo>
	</div>
</div>
<div class="control-group" id="comboFechaExamen"></div>

