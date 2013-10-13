<style>
.error{
	color:red;font-weight: bold;border-radius: 5px solid red;padding: 5px;
}
</style>
<script src="static/js/sicnod/login.js" type="text/javascript"></script>

<div class="row-fluid">
	<div class="box span12">		
		<div class="box-content">
			<%
			String salida = "";
			String result_forgot = request.getParameter("result_forgot");
			if( result_forgot==null || result_forgot.equals("") ){
				salida = "";
			}else{
				%>
				
				<div class="error">
						<%
						if(result_forgot.equals("legajo_incompleto")){
							salida = "legajo incompleto";
						}
						else if(result_forgot.equals("legajo_invalido")){
							salida = "legajo invalido";
						}
						%>
						<%=salida%>
					</div>
			<%
			}
			String legajo = request.getParameter("legajo");
			%>				
			<form class="form-horizontal" action="" method="post" name="FormForgot" id="FormForgot" >
				<fieldset>
					<legend>Olvidaste tu contraseña?</legend>

					<div class="control-group ">
						<label class="control-label" for="inputWarning">Ingrese su Legajo:&nbsp;</label>
						<div class="controls">
							<input type="text" name="legajo" id="legajo" value="" style="border:1px solid gray" />
							<button type="button" name="recovery" class="btn btn-primary"  onclick="sendFormForgot();">Enviar</button>
						</div>
					</div>                      
				</fieldset>
			</form>
        </div>
    </div>
</div>

<script type="text/javascript">
function sendFormForgot(){
	var legajo = document.getElementById("legajo").value;
    if(legajo==""){
        alert("Ingrese su legajo.");
        return false;
    }
	goPageNoLogin("3004&legajo="+legajo);
	return false;
}
</script>
