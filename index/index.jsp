<%@page import="org.isft.logic.collection.EjemploConexion, java.util.Vector"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>AppModel index</title>
</head>
<body>
	Pagina principal
        <%
        try{
            EjemploConexion ejemplo=new EjemploConexion();%>
            Conexion exitosa<br/>
            <%Vector vec=ejemplo.traerClientes();
            for(int i=0; i<vec.size(); i++){%>
              Cliente : <%=(String)vec.get(i)%><br/>  
            <%}
        } catch(Exception exc){%>
            Conexion erronea
          <%=exc.getMessage()%>  
        <%} 
        %>
</body>
</html>