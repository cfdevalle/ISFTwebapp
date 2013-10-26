<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
<% String d=request.getParameter("carrera");%>

            
        Materia destino :<tag:ComboMateriaEquivalencias cod_carrera="<%=d%>"/>
           