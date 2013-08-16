<style>
#f{
    width: 630px;
    margin: 0 auto;
    float:none;

}
.body{
    position:relative;
    float: left;
    width:630px;
    position:relative;
    margin-top:150px !important;
}

fieldset {

position: relative;

}
.t_caption{
{
font-weight: bold;
float: left;
font-size: 25px;
margin-bottom: 15px;
}
</style>
<script src="static/js/sicnod/login.js" type="text/javascript"></script>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-content">

                    <form action='' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso_div_image(); return false;">

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
                    </form>
                   
                </div>                
            </div>
</div>
