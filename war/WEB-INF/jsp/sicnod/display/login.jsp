<script src="static/js/sicnod/login.js" type="text/javascript"></script>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-content">

                    <form action='' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso_div_image(); return false;">
                        <fieldset>
                        <legend>Login</legend>
                        <table border="0" >
                            <tr>
                                <td width="100px"><label for="txt_usuario">Usuario</label></td>
                                <td width="230px"><input type="text" maxlength="30" name="txt_usuario" id="txt_usuario"></td>
                                <td width="300px">
                                    <img id="imagen_user" src="" width="25px" style="visibility:hidden;" />
                                    <span id="mensaje_user"></span>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="txt_password">Password</label></td>
                                <td><input type="password" name="txt_password" id="txt_password"></td>
                                <td>
                                    <img id="imagen_pass" src="" width="25px"  style="visibility:hidden;" />
                                    <span id="mensaje_pass"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <input class="btn btn-primary" type="reset" value="Cancelar" name="btn_cancelar" />
                                    <input class="btn btn-primary"  type="submit" name="btn_aceptar" value="Aceptar" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <a href="modulo.go?codPage=3003">Recuperar password</a>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                         </fieldset>
                    </form>
                   
                </div>
                <!--
                <div class="span6" style="min-height: 600px; background-color: #DCCCFF">
                    <h1>Hola</h1>
                </div>
                -->
            </div>
</div>
          