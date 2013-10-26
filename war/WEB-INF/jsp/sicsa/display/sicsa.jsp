<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
<%@page import="org.isft.domain.Carrera, org.isft.domain.Alumnos, java.util.Vector"%>
<div class="row-fluid">
    <div class="span12"> 
    	<ul class="nav nav-tabs">
            <li class="active"> <a href="javascript:goPage(4001)">Situacion Academica</a></li>
            <li> <a href="javascript:goPage(4002)">Mensajes</a></li>
        </ul>            
    </div>
</div>
<div class="row-fluid">
    <div class="span10 offset1">
        <%
        
        Alumnos alumno = (Alumnos) request.getSession(false).getAttribute("alumno");
        int legajo = alumno.getLegajo();
        Vector carreras;
        carreras = alumno.getCarreras();

        for(int i=0;i<carreras.size();i++){
            Carrera c = (Carrera)carreras.get(i);
            int cod = c.getCod_carrera();
            String nombre = c.getNombre();
        %>
            <h2><%=nombre%></h2>
            <tag:GrillaConsultaAcademica legajo="<%=legajo%>" carrera="<%=cod%>"/>
        <%}%>
    </div>
</div>
