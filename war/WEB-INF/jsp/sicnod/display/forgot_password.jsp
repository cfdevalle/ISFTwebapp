<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Prueba Wrapper</title>
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
.table{
 text-align:center;
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
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
<div class="row-fluid">
	<div class="box span12">		
		<div class="box-content">
			
                <% 
                boolean form = true;
                String error = "";
                if(!error.trim().equals("")){
                    if(error.trim().equals("mail no valido")){ %>
                        <h3 style="color:red;"><%= "El email ingresado no es valido o no esta registrado" %>.</h3>
                <% }else if(error.trim().equals("ok")){ form = false; %>
                        <h3 style="color:red;"><%= "Se ha enviado un email a su cuenta para hacer el proceso de recuperar contraseña" %>.</h3>
                <% } } %>
               
           
            <% if(form){ %>
                <form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
                    <fieldset>
                        <legend>Olvidaste tu contraseña?</legend>
                        <input type="hidden" name="section"         id="section"         value="home" />
                        <input type="hidden" name="panel"           id="panel"           value="forgot_password" />
                        <input type="hidden" name="controller"      id="controller"      value="forgot_password" />
                        <input type="hidden" name="execute_action"  id="execute_action"  value="paso1" />
                         
                        <div class="control-group ">
                            <label class="control-label" for="inputWarning">Ingrese su email:&nbsp;</label>
                            <div class="controls">
                                <input type="text" name="email_fp" id="email_fp" value="" style="border:1px solid gray" />
                                <button type="button" name="recovery" class="btn btn-primary"  onclick="sendFormForgot();">Enviar</button>
                            </div>
                        </div>                      
                    </fieldset>
                </form>
            <% } %> 
        </div>
    </div>
</div>

<script type="text/javascript">
function sendFormForgot(){
    if(document.getElementById("email_fp").value==""){
        alert("Ingrese su email.");
        return false;
    }
    document.getElementById("FormForgot").submit();
}
</script>
 <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>