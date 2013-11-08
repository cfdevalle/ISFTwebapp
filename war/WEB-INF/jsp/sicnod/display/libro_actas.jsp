<%
	String carrera = request.getParameter("carrera");
	String curso = request.getParameter("curso");

	if (carrera == null || carrera.equals("")) {
		carrera = "1";
	}
%>
<script>
	$("#carrera").ready(//id del tag select carrera
		$("#comboMateria").load("modulo.go?codPage=3011").ready(// container
			$("#comboTurno").load("modulo.go?codPage=5005", {carrera: 0})
		)
	);
	/*
	 * Carga materias
	 */
	function carga() {
		var carrera = $("#carrera").val();
		$("#comboMateria").load("modulo.go?codPage=3011", {carrera: carrera});
	}
	function cargaTurnos() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();

		$("#comboTurno").load("modulo.go?codPage=3012", {carrera: carrera,materia: materia});
	}
	function cargaLectivo() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();

		$("#comboLectivo").load("modulo.go?codPage=3013", {carrera: carrera,materia: materia,turno: turno});
	}
	function cargaFechaExamen() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();
		var lectivo = $("#lectivo").val();

		$("#comboFechaExamen").load("modulo.go?codPage=3014", {carrera: carrera,materia: materia,turno: turno,lectivo: lectivo});
	}
	function cargaGrillaAlumnos(){
		
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();
		var lectivo = $("#lectivo").val();
		var fecha_examen = $("#fecha_examen").val();
		
		$("#comboAlumnos").load("modulo.go?codPage=3015", {carrera: carrera,materia: materia,turno: turno,lectivo: lectivo, fecha_examen:fecha_examen});
	}
function sendModalFormLibroActas() {
	$('#modalDesinscribir').modal('show');
}
function sendFormLibroActas() {
	if(!validateForm("Calificacion"))
		return false;
	if(!validateForm("Libro"))
		return false;
	if(!validateForm("Folio"))
		return false;
	gotTop();
	sendAjax();

	return false;
}
function setLibroFolio(group,i){
	//var Folios = document.getElementsByName("Folio");
	//var Libros = document.getElementsByName("Libro");

	var Folios = $('.Folio_'+group);
	var Libros = $('.Libro_'+group);
	
	if(Folios.length > 1){
		//var Folio1 = document.getElementsByName("Folio")[0].value;
		//var Libro1 = document.getElementsByName("Libro")[0].value;
		
		var Folio1 = $('.Folio_'+group)[i].value;
		var Libro1 = $('.Libro_'+group)[i].value;
		
		for(var i=0; i < Folios.length; i++){
			Folios[i].value = Folio1;
			Libros[i].value = Libro1;
		}
	}
}
function validateForm(nombreLista){
	//setLibroFolio();
	var Folios = document.getElementsByName(nombreLista);
	for(var i=0; i < Folios.length; i++){
		var currentValue = Folios[i].value;
		
		if(currentValue == ""){
			gotTop();
			Notifier.warning("No puede dejar en blanco los campos de la columna: "+nombreLista+"");	
			return false;
		} else if (	validarInt(currentValue)==false || currentValue<0) {
			gotTop();
			Notifier.warning("Los valores de la columna "+nombreLista+" deben ser numéricos a partir del cero (0) hasta el diez (10)");
			return false;
		}
		if(nombreLista=="Calificacion" && (currentValue<0 || currentValue>10)){
			gotTop();
			Notifier.warning("La calificación permitida es de 0 a 10");
			return false;
		}
	}
	return true;
}
 function validarInt(value) {
     var error = true;
     var re = /^(-)?[0-9]*$/;
     if (!re.test(value)) {
		 error = false;
     }
     return error;
 }
 function sendAjax(){
	var queryString = $("#FormLibroActas").serialize();
	$.ajax({
		type: 'POST',
		url: 'modulo.go?codPage=3017&'+queryString,
		success: function(response){
		if(response=='ERROR'){
			Notifier.warning("Error al intentar guardar los datos.");
		}else if(response=='NO_RESULT'){
			Notifier.warning("No se procesaron los datos enviados.");
		}else{
			Notifier.success("Los datos se actualizaron con éxito!");
		}
	},
	error: function(response){
		Notifier.error(response);	
	}
	});
}
</script>
<%@taglib  uri="/WEB-INF/tld/ComboCarrera.tld" prefix="carr" %>
<div class="row-fluid">
    <div  style="margin-top: 10px">
        <div class="span12">
			<fieldset>
				<legend><img src="static/images/sicnod/ISFT.GIF" style="width:3%;  float:left;"> &nbsp;&nbsp;&nbsp;ACTA VOLANTE DE EVALUACIONES</legend>
				<form class="form-horizontal" action="" method="post" name="FormLibroActas" id="FormLibroActas" >
					<div class="control-group" style=" max-width: 50%; float: left;max-height: 30px; ">
						<label class="control-label" for="inputMateria">Carrera: </label>
						<div class="controls">
							<carr:carrera></carr:carrera>
						</div>
					</div>
						<div id="comboMateria" class="control-group"></div>
				</form>
			</fieldset>
		</div>
	</div>
</div>
						
<div id="modalDesinscribir" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<h3 id="myModalLabel">Carga de Notas en acta volante</h3>
	</div>
	<div class="modal-body" id="mensaje_desinscribirse">Confirma que los datos ingresados en el acta volante serán guardados en el sistema?</div>
	<div class="modal-footer">
		<a class="btn" data-dismiss="modal" aria-hidden="true">cancelar</a>
		<input type="button" onclick="sendFormLibroActas()" data-dismiss="modal" class="btn btn-primary" value="Aceptar">    
	</div>
</div>
