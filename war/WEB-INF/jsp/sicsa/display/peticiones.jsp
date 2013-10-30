<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
<%@page import="org.isft.domain.Alumnos"%>
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
            function verPeticion(id_mensaje){
                $('.modal-body').load("jsp/sicsa/display/verPeticion.jsp?id_mensaje="+id_mensaje);
                $('#myModal').modal('show');
            }
            function nuevaPeticion(){
                $('.modal-body').load("jsp/sicsa/display/nuevaPeticion.jsp");
                $('#myModal').modal('show');
            }
        </script>
            <div class="row-fluid">
                <div class="span12"> 
                    <ul class="nav nav-tabs">
                        <li> <a href="javascript:goPage(4001)">Situacion Academica</a></li>
                        <li class="active"> <a href="javascript:goPage(4002)">Mensajes</a></li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span10 offset1">
                    <h1> Mensajes <a style="float:right;" href="javascript:nuevaPeticion()" class="btn btn-primary" >Nuevo mensaje</a></h1>
                    
                    <%
        
                    Alumnos alumno = (Alumnos) request.getSession(false).getAttribute("alumno");
                    int legajo = alumno.getLegajo();
                    %>
                    <tag:GrillaMensaje legajo="<%=legajo%>"/>
                </div>
            </div>
            
        
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                </div>
                <div class="modal-body">
                </div>
            </div>
  
