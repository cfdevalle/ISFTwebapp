<%-- 
    Document   : pruebaWrapper
    Created on : 19-jun-2013, 19:27:31
    Author     : Alan
--%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="jsp/includes/metas_inc.jsp" %>
        <title>Prueba Wrapper</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <div class="well"><h1>Instituto Carlos Pelegrini N°179</h1></div>
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <div class="well">
                        <img  class="img-rounded" src="static\images\3.jpg" style=" width:100%; height: 200px;">
                    
                    </div>    
                
                </div>
            </div>
            <div class="row">
                <div class="span5"> 
                        <div class="well">
                            <div class="alert alert-success"> 
                            <%@include file="jsp/includes/login/login.jsp" %>
                            </div>
                        </div>
                </div>
                <div class="span4"> 
                    <div class="well">
                        <h4>Oferta academica</h4>
                        <li>
                            <ul>Tecnico superior en Analisis de Sistemas</ul>
                            <ul>Tecnico superior en Higiene y Seguridad Industrial</ul>
                            <ul>Turismo</ul>
                        </li>
                    </div></div>
                <div class="span3"> <div class="well">
                        <h4>Articulamos con la siguientes universidades</h4>
                        <li>
                            <ul>Universidad Nacional de Lomas de Zamora</ul>
                        </li>
                    </div></div>
            </div>
            
            <%@include file="jsp/includes/pie_inc.jsp" %>
            
        </div>
        </div>
    </body>
</html>
