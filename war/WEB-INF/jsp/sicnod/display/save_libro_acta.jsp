<%@page import="org.isft.domain.Carrera, org.isft.web.servlets.frontController, org.isft.logic.updater.AbmAlumno"%>
<%@page import="org.isft.logic.collection.EjemploConexion, org.isft.domain.Alumnos, org.isft.domain.Carrera, org.isft.logic.validator.ValidarUsuario, java.util.Vector,java.util.HashMap, java.util.ResourceBundle"%>

<div class="row-fluid">
	<div class="box span12">		
		<div class="box-content">
			<%
			String txt_mensaje = "";
			if (request.getSession(false).getAttribute("alumno") != null) {
				Alumnos alumnoSession = (Alumnos) request.getSession(false).getAttribute("alumno");
				String Nombre = request.getParameter("Nombre");
				String Apellido = request.getParameter("Apellido");
				String Direccion = request.getParameter("Direccion");
				String Localidad = request.getParameter("Localidad");
				String CP = request.getParameter("CP");
				String Sexo = request.getParameter("Sexo");
			
				Alumnos alumno = new Alumnos();
				int legajo = alumnoSession.getLegajo();
				alumno.setLegajo(legajo);
				alumno.setNombre(Nombre);
				alumno.setApellido(Apellido);
				alumno.setLocalidad(Localidad);
				alumno.setDireccion(Direccion);
				alumno.setSexo(Sexo);
				alumno.setCp(CP);

				ValidarUsuario validarUsuario = new ValidarUsuario();

				if (validarUsuario.isUsuarioValidoByLegajo(alumno)) {
					/*
					 * Cuando actualizo los datos del alumno, tambien hay que actualizar los datos en session
					 */
					AbmAlumno abmAlumno = new AbmAlumno();
					abmAlumno.updateAlumno(alumno);
					
					Alumnos fullUsuario = validarUsuario.getFullUsuario(alumnoSession);
					
					
					
					String cod_carrera=request.getParameter("cbo_carrera");
					if(cod_carrera==null || cod_carrera.equals("") ){
						/*
						 * mantengo la carrera actual de session
						 */
						Carrera carrera = (Carrera) alumnoSession.getCarrera();
						fullUsuario.setCarrera(carrera);
					} else{ 
						/*
						 * se cambia la carrera que selecciono el usuario en su cuenta
						 */
						if(fullUsuario.getCarreras().size() > 0){
							int cod=(Integer.parseInt(cod_carrera));
							for (int i = 0; i < fullUsuario.getCarreras().size(); i++) {
								Carrera carrera = (Carrera) fullUsuario.getCarreras().get(i);
								if(carrera.getCod_carrera() == cod){
									fullUsuario.setCarrera(carrera);
									break;
								}
							}
						}
						
					}
					
					request.getSession(false).setAttribute("alumno", fullUsuario);
					txt_mensaje = "ok";
				} else {
					txt_mensaje = "legajo_invalido";
				}
			%>
			<script>
				console.log("me voy a la 3007&result_forgot=<%= txt_mensaje%>");
				goPage("3007&result_forgot=<%= txt_mensaje%>");
			</script>
				(PROCESO UPDATE ALUMNO)
			<% }else{ %>
				No tiene permisos para ver esta seccion.
			<% } %>
		</div>
	</div>
</div>
