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
		console.log("Carrera: " + carrera);
		$("#comboMateria").load("modulo.go?codPage=3011", {carrera: carrera}, 5000);
	}
	function cargaTurnos() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		console.log("Carrera: " + carrera);
		console.log("Materia " + materia);
		$("#comboTurno").load("modulo.go?codPage=3012", {carrera: carrera,materia: materia}, 5000);
	}
	function cargaLectivo() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();
		console.log("Carrera: " + carrera);
		console.log("Materia " + materia);
		console.log("Turno " + turno);
		$("#comboLectivo").load("modulo.go?codPage=3013", {carrera: carrera,materia: materia,turno: turno}, 5000);
	}
	function cargaFechaExamen() {
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();
		var lectivo = $("#lectivo").val();
		console.log("Carrera: " + carrera);
		console.log("Materia " + materia);
		console.log("Turno " + turno);
		console.log("Lectivo " + lectivo);
		$("#comboFechaExamen").load("modulo.go?codPage=3014", {carrera: carrera,materia: materia,turno: turno,lectivo: lectivo}, 5000);
	}
	function cargaGrillaAlumnos(){
		
		var carrera = $("#carrera").val();
		var materia = $("#materia").val();
		var turno = $("#turno").val();
		var lectivo = $("#lectivo").val();
		var fecha_examen = $("#fecha_examen").val();
		console.log("Carrera: " + carrera);
		console.log("Materia " + materia);
		console.log("Turno " + turno);
		console.log("Lectivo " + lectivo);
		console.log("Fecha examen " + fecha_examen);
		
		$("#comboAlumnos").load("modulo.go?codPage=3015", {carrera: carrera,materia: materia,turno: turno,lectivo: lectivo, fecha_examen:fecha_examen}, 5000);
		//alert("OK!");
	}
</script>
<%@taglib  uri="/WEB-INF/tld/ComboCarrera.tld" prefix="carr" %>
<div class="row-fluid">
    <div  style="margin-top: 10px">
        <div class="span12">
			<fieldset>
				<legend><img src="static/images/sicnod/ISFT.GIF" style="width:3%;  float:left;"> &nbsp;&nbsp;&nbsp;ACTA VOLANTE DE EVALUACIONES</legend>
				<form class="form-horizontal" action="" method="post">
					<div class="control-group">
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
