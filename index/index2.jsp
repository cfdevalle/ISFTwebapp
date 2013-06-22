<%-- 
    Document   : index
    Created on : 13/05/2013, 00:51:56
    Author     : marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body> 
        <fieldset>
        <legend >Login</legend>
                        <form action="jsp\archivo1.jsp" method="post">
                        <table border="0" width="50%" align="center">
        <tr>
            <td>Usuario
            <td><input type="text" maxlength="30" name="txt_usuario"  >
        <tr>
            <td>Password
            <td><input type="password" name="txt_password"  >
        <tr>
            <td colspan="2">
			<center>
              <INPUT type="submit" value="Enviar" name="btn_aceptar" /><br/>
			 <INPUT type="reset" value="cancelar" name="btn_cancelar" /><br/>
			  	
			 </center>
            <div />
			</td>
		</tr>
		</table>
</form>

</fieldset>
    </body>
</html>
