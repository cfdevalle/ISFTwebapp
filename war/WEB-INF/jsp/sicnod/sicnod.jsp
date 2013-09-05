<<<<<<< HEAD:isftwebapp/war/WEB-INF/jsp/sicnod/sicnod.jsp
<%-- 
    Document   : pruebaWrapper
    Created on : 19-jun-2013, 19:27:31
    Author     : Alan
--%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../includes/metas_inc.jsp" %>
        <title>Prueba Wrapper</title>
    </head>
    <body>
        <div class="container">
            <%@include file="../includes/encabezado_inc.jsp" %>
            <div class="row">
                <div class="span6" style="min-height: 600px; background-color: #DCCCFF">
                    <h1>Hola grupo sicnod aca va su desarrollo</h1>
                </div>
                <div class="span6" style="min-height: 600px; background-color: #DCCCFF">
                    <h1>Hola</h1>
                </div>
            </div>
            <%@include file="../includes/pie_inc.jsp" %>
        </div>
    </body>
</html>
=======
cierro la sesion
<%
HttpSession session = request.getSession(false);
session.invalidate();
response.sendRedirect("index.jsp");
%>
>>>>>>> 6048d703ca953b07f94e525a1342acbb804d1a82:war/WEB-INF/jsp/sicnod/display/sicnod.jsp
