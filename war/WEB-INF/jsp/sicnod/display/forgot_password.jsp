
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

font-weight: bold;
float: left;
font-size: 25px;
margin-bottom: 15px;
}
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

			boolean form = true;
          
            if(form){ 
			/*
			 * FIXME: hacer una funcion JS que tome todos los input del form y enviarlo como parametro al 
			 * metodo goPage(param)
			 */
			%>
				
                <form class="form-horizontal" action="javascript:goPage(3004)" method="post" name="FormForgot" id="FormForgot" >
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
            <% } %> 
        </div>
    </div>
</div>

<script type="text/javascript">
function sendFormForgot(){
    if(document.getElementById("legajo").value==""){
        alert("Ingrese su legajo.");
        return false;
    }
    document.getElementById("FormForgot").submit();
}
</script>
