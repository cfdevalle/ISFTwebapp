<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos,org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap"%>
<style>
/*
fieldset {

position: relative;

}
*/
</style>
<script src="static/js/sicnod/login.js" type="text/javascript"></script>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-content">
            <% 
			if(request.getSession(false).getAttribute("alumno")!=null){ 
				Alumnos alumno = (Alumnos)request.getSession(false).getAttribute("alumno");    
			%>
                <ul class="nav pull-right">
                    <li class="dropdown">
                        Bienvenido <strong><span id="nombre_login"><%= alumno.getNombre() %> <%= alumno.getApellido() %></span></strong><br />
						Mi carrera <strong><span id="carrera_login"><%= alumno.getCarrera().getNombre()%></span></strong><br />
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i>Mi cuenta<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:goPage(3007)">Mis datos</a></li>
                            <li><a href="javascript:goPage(3004)">Cambiar contrase&ntilde;a</a></li>
                            <li class="divider"/>
                            <li><a href="modulo.go?codPage=3001"><i class="icon-remove-sign"></i> Cerrar sesi&oacute;n</a></li>
                        </ul>
                    </li>
                </ul>
              
            <% }else{ %>
                <form action='redirec.login?codPage=3002' name='form_login' id='form_login' method="post" onsubmit="if(!valida_int('txt_usuario')) return false;">
                    <table border="0" >                    
                        <tr>
                            <td width="240px">
                                <input  type="text" maxlength="30" name="txt_usuario" id="txt_usuario" placeholder="INGRESAR USUARIO" required="true" />
                            </td>
                            <td width="300px">
                                <img id="imagen_user" src="" width="25px" style="visibility:hidden;" />
                                <span id="mensaje_user"></span>
                            </td>
                            <td><input   type="password" name="txt_password" id="txt_password" placeholder="INGRESAR PASSWORD" required="true" /></td>
                            <td>
                                <img id="imagen_pass" src="" width="25px"  style="visibility:hidden;" />
                                <span id="mensaje_pass"></span>
                            </td>                       
                            <td>
                                <!--<input class="btn btn-primary" type="reset" value="Cancelar" name="btn_cancelar" />-->
                                <input class="btn  btn-primary"   type="submit" name="btn_aceptar" value="Aceptar" />
                            </td>
                        </tr>
                        <tr>
                            <td>    
                             <a href="javascript:goPageNoLogin(3003)">Recuperar password</a>
                            </td>
                            <td></td>
                       
                        <%
                        String salida = "";
                        String result_login=request.getParameter("result_login");
                        if(result_login==null || result_login.equals("") ){
                            salida = "";
                        }else{
                        %>
                         
                                <td style="color:red;">
                                    <%
                                    if(result_login.equals("todo_incompleto")){
                                        salida = "Complete todos los datos";
                                    }
                                    else if(result_login.equals("usuario_incompleto")){
                                        salida = "Usuario incompleto";
                                    }
                                    else if(result_login.equals("password_incompleto")){
                                        salida = "Password incompleto";
                                    }
                                    else if(result_login.equals("datos_invalidos")){
                                        salida = "Usuario/password inv&aacute;lidos";
                                    }
                                    %>
                                    <%=salida%>
                                </td>
                            </tr>
                        <%
                        }
                        %>
                    </table>
                </form>
            <% } %>
        </div>
    </div>
</div>
