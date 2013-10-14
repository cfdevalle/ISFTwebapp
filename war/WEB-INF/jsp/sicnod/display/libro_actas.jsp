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
		alert("OK!");
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

					<div class="container" style="margin-left: 55px;">

						<table border="1" cellpadding="2">
							<thead bordercolor="#000000" bgcolor="#0033CC" style="color:#FFF">
							<th width="100px" bgcolor="#009900" bordercolor="#000000" scope="col"><strong>N&ordm;</strong></th>
							<th width="100px" bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Legajo</strong></th>
							<th width="100px" bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Apellido</strong></th>
							<th width="100px" bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Nombre</strong></th>

							<th width="100px" bordercolor="#000000" scope="col"><strong>Modal.</strong></th>
							<th width="100px" bordercolor="#000000" scope="col"><strong>Semi Pres.</strong></th>
							<th width="100px" bordercolor="#000000" scope="col"><strong>Fecha Insc.</strong></th>
							<th width="100px" bordercolor="#000000" scope="col"><strong>Calif.</strong></th>
							<th width="100px" bordercolor="#000000" scope="col"><strong>Libro</strong></th>
							<th width="100px" bordercolor="#000000" scope="col"><strong>Folio</strong></th>
							</thead>
							<tr>
								<td bordercolor="#000000">&nbsp;1</td>
								<td bordercolor="#000000">&nbsp;4455</td>
								<td bordercolor="#000000">&nbsp;Marquez</td>
								<td bordercolor="#000000">&nbsp;Sebastian</td>
								<td bordercolor="#000000">&nbsp;???</td>
								<td bordercolor="#000000">&nbsp;???</td>
								<td bordercolor="#000000">&nbsp;11/11/2013</td>

								<td bordercolor="#000000" style="vertical-align: middle;"><input  style="max-width: 95px" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000" style="vertical-align: middle;"><input  style="max-width: 95px" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000" style="vertical-align: middle;"><input  style="max-width: 95px" name="" type="text" size="4" >&nbsp;</td>
							</tr>
							<tr>
								<td colspan="10">&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align:center;" colspan="15">
									<button type="submit" class="btn btn-primary">Cargar</button>
									<button type="reset" class="btn btn-primary">Cancelar</button>
                                </td>
                            </tr>
						</table>
					</div>
				</form>
			</fieldset>
		</div>
	</div>
</div>
