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
<%
String _fp_=request.getParameter("_fp_");
%>
<div class="row-fluid">
	<div class="box span12">		
		<div class="box-content">
                <% 
                 boolean form = true;
                String error = "";
                if(!error.trim().equals("")){
                    if(error.trim().equals("error")){  %>
                        <h3 style="color:red;">Revise los datos ingresados. No se pudo modificar las contraseña.</h3>
                <% }else if(error.trim().equals("ok")){ form = false; %>
                        <h3 style="color:red;">Su contraseña ha sido modificada..</h3>
                <% } } %>
               
           
            <% if(form){ %>
                 <form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
                    <fieldset>
                        <legend>Olvidaste tu contraseña?</legend>
						<% 
                        //if(!_fp_.equals(null) && !_fp_.trim().equals("")){
                             %>
                                
                                    <input type="hidden" name="section"         id="section"         value="home" />
                                    
                                    <div class="control-group ">
                                        <label class="control-label" for="inputWarning">Ingrese su nueva contraseña</label>
                                        <div class="controls">
                                            <input type="password" name="pass_1_fp" id="pass_1_fp" value="" />
                                            
                                        </div>
                                    </div>       
                                    <div class="control-group ">
                                        <label class="control-label" for="inputWarning">reingrese la nueva contraseña</label>
                                        <div class="controls">
                                            <input type="password" name="pass_2_fp" id="pass_2_fp" value="" />
                                            
                                        </div>
                                    </div> 
                                    <div class="control-group ">
                                        <label class="control-label" for="inputWarning">&nbsp;</label>
                                        <div class="controls">
                                            
                                            <button type="button" name="recovery" class="btn btn-primary"  onclick="sendFormForgot();">Enviar</button>
                                        </div>
                                    </div> 
                                    
                                
                        <% //} %>
                    </fieldset>
                </form>
            <% } %>
        </div>
    </div>
</div>
<script type="text/javascript">
function sendFormForgot(){
    //nombre apellido email telefono pass alias compania job_title Address Address_2 city state
    if(document.getElementById("pass_1_fp").value=="" || document.getElementById("pass_2_fp").value==""){
        alert("Revise las contraseñas ingresadas");
        return false;
    }
    if(document.getElementById("pass_1_fp").value != document.getElementById("pass_2_fp").value){
        alert("Revise las contraseñas ingresadas");
        return false;
    }else{
        document.getElementById("FormForgot").submit();
        return true;
    }
}
</script>
 <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>