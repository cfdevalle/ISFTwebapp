cierro la sesion
<%
HttpSession session = request.getSession(false);
session.invalidate();
response.sendRedirect("index.jsp");
%>