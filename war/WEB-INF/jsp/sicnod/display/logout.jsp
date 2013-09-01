<%
/*
 * cierro la sesion y vulvo al index
 */
request.getSession(false).invalidate();
response.sendRedirect("index.jsp");

%>