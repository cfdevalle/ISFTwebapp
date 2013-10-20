
<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController"%>
<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>

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
</style>
<script src="static/js/sicnod/login.js" type="text/javascript"></script>


	<div class="row-fluid">
		<div class="box span12">		
			<div class="box-content">
				<%
				if (request.getSession(false).getAttribute("alumno") != null) {
					Alumnos alumno = (Alumnos) request.getSession(false).getAttribute("alumno");

					String Sexo = alumno.getSexo(); 
					String SexoH = (Sexo.equals("H")) ? "checked='checked'" : "";
					String SexoM = (Sexo.equals("M")) ? "checked='checked'" : "";
					
				%>
				<form class="form-horizontal" action="" method="post" name="FormAlumno" id="FormAlumno" >
					<fieldset>
						<legend>Mis Datos</legend>
						
						<% boolean ejemploTLD=false; if(ejemploTLD){ %>
							<div class="control-group ">
								<label class="control-label" for="inputWarning">TAG EJ</label>
								<div class="controls">
									<%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
									<tag:ComboAlumnos legajo="<%= alumno.getLegajo()%>"/>
								</div>
							</div>   
						<% } %>				
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Legajo</label>
							<div class="controls">
								<strong><%= alumno.getLegajo()%></strong>
							</div>
						</div>       
						
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Mi carrera actual</label>
							<div class="controls">
								<% if(alumno.getCarrera().getCod_carrera() > 0){ %>
									<strong>(<%= alumno.getCarrera().getCod_carrera()%>) - <%= alumno.getCarrera().getNombre()%></strong>
								<% }else{ %>
									<strong>No tiene carrera actual asignada. <br />Seleccione una carrera de la lista:</strong>
								<% } %>
							</div>
						</div>       

						<div class="control-group ">
							<label class="control-label" for="inputWarning">Mis Carrera</label>
							<div class="controls">
								<% if(alumno.getCarreras().size() > 0){ %>
									<SELECT  NAME="cbo_carrera"> 
										<%
										String selected = "";
										for (int i = 0; i < alumno.getCarreras().size(); i++) {
											Carrera carrera = (Carrera) alumno.getCarreras().get(i);
											if(alumno.getCarrera().getCod_carrera() == carrera.getCod_carrera()) 
												selected = "selected='selected'";
											else
												selected = "";
											%> 
											<OPTION <%= selected %> value="<%=carrera.getCod_carrera()%>"><%=carrera.getNombre()%></OPTION>  
										<% } %> 
									</SELECT> 
								<% }else{ %> 
									<strong>No tiene ninguna carrega asignada.</strong>
								<% } %> 
								
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Nombre</label>
							<div class="controls">
								<input type="Nombre" name="Nombre" id="Nombre" value="<%= alumno.getNombre()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Apellido</label>
							<div class="controls">
								<input type="Apellido" name="Apellido" id="Apellido" value="<%= alumno.getApellido()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Direccion</label>
							<div class="controls">
								<input type="Direccion" name="Direccion" id="Direccion" value="<%= alumno.getDireccion()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Localidad</label>
							<div class="controls">
								<input type="Localidad" name="Localidad" id="Localidad" value="<%= alumno.getLocalidad()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Codigo Postal</label>
							<div class="controls">
								<input type="text" name="CP" id="CP" value="<%= alumno.getCp()%>" />
							</div>
						</div>       
						<div class="control-group ">
							<label class="control-label" for="inputWarning">Sexo</label>
							<div class="controls">
								<input type="radio" name="Sexo" id="sexoH" value="H" <%= SexoH %> /> Hombre<br />
								<input type="radio" name="Sexo" id="sexoH" value="M" <%= SexoM %> /> Mujer<br />
							</div>
						</div>       
						
						<div class="control-group ">
							<label class="control-label" for="inputWarning">&nbsp;</label>
							<div class="controls">
								<button type="button" name="updateInfo" class="btn btn-primary"   onclick="sendForm();">Enviar</button>
							</div>
						</div>
					</fieldset>
				</form>
				<% }else{ %>
					No tiene permisos para ver esta seccion.
				<% } %>
			</div>
		</div>
	</div>
<script type="text/javascript">
function sendForm() {
	var queryString = $("#FormAlumno").serialize();
	console.log(queryString);
	goPageNoLogin("3010&"+queryString);
	return false;
}
</script>
