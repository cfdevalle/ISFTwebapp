<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
<%@taglib  uri="/WEB-INF/tld/ComboCarrera.tld" prefix="carr" %>
<%
    int carrera = 0;
    if(request.getParameter("carrera") != null){
        carrera = Integer.parseInt(request.getParameter("carrera"));
    }
%>
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
        function eliminarMensaje(id, elm){
            var c = confirm("Esta seguro que desea eliminar el mensaje "+id+"?");
            if(c){
                var tr = elm.parentNode.parentNode;
                $.get('jsp/sicsa/abmc/ajaxMensajes.jsp?id_mensaje='+id+'&accion=eliminar');
                tr.remove();
                return false;
            }
        }
        function verPeticion(id_mensaje){
            $('.modal-body').load("jsp/sicsa/abmc/responderPeticion.jsp?id_mensaje="+id_mensaje);
            $('#myModal').modal('show');
        }
        
        function filtrarMensajes(){
            var carrera = $('#carrera').val();
            goPage(4005+"&carrera="+carrera);
        }
        </script>
            <!--<div class="row">
                <div class="span12"> 
                    <ul class="nav nav-tabs">
                        <li> <a href="modulo.go?codPage=4001">Situacion Academica</a></li>
                        <li class="active"> <a href="modulo.go?codPage=4002">mensajes</a></li>
                    </ul>
                </div>
            </div>-->
            <div class="row-fluid">
                <div class="span10 offset1">
                    <h1> Mensajes</h1>
                    <p>
                        <span>Carrera: 
                            <carr:carrera></carr:carrera>
                            <input class="btn btn-primary" type="button" value="Filtrar" onclick="filtrarMensajes()">
                        </span>
                    </p>
                    <tag:GrillaMensaje carrera="<%=carrera%>" isAdmin="1"/>
                </div>
            </div>
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                </div>
                <div class="modal-body">
                </div>
            </div>
  
