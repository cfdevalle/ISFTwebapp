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

    <div  style="margin-top: 10px">

        <div class="span12">
        	<fieldset>
            	<legend><img src="static/images/sicnod/ISFT.GIF" style="width:3%;  float:left;"> &nbsp;&nbsp;&nbsp;ACTA VOLANTE DE EVALUACIONES</legend>
				<form class="form-horizontal" action="" method="post">

                	<div class="control-group">
                    	<label class="control-label" for="select">Carrera</label>
                        <div class="controls">
                            <select id="select">
                                <option name="op1" value="1">Administracion </option>
                                <option name="op2" value="2">Sistemas</option>
                                <option name="op3" value="3">Seguridad</option>
                                <option name="op4" value="4">Turismo</option>
                            </select>

                        </div>
                    </div>



                    <div class="control-group">
                        <label class="control-label" for="inputMateria">Materia</label>
                        <div class="controls">
                            <select id="select">
                                <option name="op1" value="1">Analisis Matematico </option>
                                <option name="op2" value="2">Administracion de Empresas</option>
                                <option name="op3" value="3">Ingles</option>
                                <option name="op4" value="4">otra...</option>
                            </select>
                        </div>
                    </div>

					<div class="control-group">
						<label class="control-label" for="inputCurso">Curso</label>
						<div class="controls">
							<input type="text" id="inputCurso" placeholder=" "/>
						</div>
					</div>
                    <div class="control-group">
                        <label class="control-label" for="inputCicloLectivo">CicloLectivo</label>
                        <div class="controls">
                            <input type="text" id="inputCicloLectivo" placeholder=" "/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputCicloLectivo">Fecha Examen</label>
                        <div class="controls">
                            <input type="text" id="inputCicloLectivo" placeholder=" "/>
                        </div>
                    </div>
                    <!--
					<div class="control-group">
						<label class="control-label" for="inputPresidente">Presidente</label>
						<div class="controls">
							<input type="text" id="inputPresidente" placeholder=" "/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputVocal1">Vocal1</label>
						<div class="controls">
							<input type="text" id="inputVocal1" placeholder=" "/>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputVocal2">Vocal2</label>
						<div class="controls">
							<input type="text" id="inputVocal2" placeholder=" "/>
						</div>
					</div>
                <div class="control-group"><br>
<br>

                            <label class="control-label" for="inputTotalAlumnos">TotalAlumnos</label>
                            <div class="controls">
							<input type="text" id="inputTotalAlumnos" placeholder=" "/>
                            </div>
                            </div>


                            <div class="control-group">
                            <label class="control-label" for="inputTotalRegular">TotalRegular
                          </label>
                           <div class="controls">
                                <input type="text" id="inputTotalRegular" placeholder=" "/>
                                </div>
                            </div>

                            <div class="control-group">
                            <label class="control-label" for="inputTotalNoRegular">TotalNoRegular</label>
                            <div class="controls">
<input type="text" id="inputTotalNoRegular" placeholder=" "/>
	</div>
                            </div>

                            <div class="control-group">
                            <label class="control-label" for="inputTotalEnCurso">TotalEnCurso
                          </label>
                           <div class="controls">
                                <input type="text" id="inputTotalEnCurso" placeholder=" "/>
                                </div>
                            </div>
                            -->
					<div class="container" style="margin-left: 55px;">

						<table border="1" cellpadding="2">
							<thead bordercolor="#000000" bgcolor="#0033CC" style="color:#FFF">
								<th bgcolor="#009900" bordercolor="#000000" scope="col"><strong>N&ordm;</strong></th>
								<th bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Legajo</strong></th>
								<th bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Apellido</strong></th>
								<th bgcolor="#009900" bordercolor="#000000" scope="col"><strong>Nombre</strong></th>

								<th bordercolor="#000000" scope="col"><strong>Modal.</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Semi Pres.</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Turno</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Asist.</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Fecha Insc.</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Calif.</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Libro</strong></th>
								<th bordercolor="#000000" scope="col"><strong>Folio</strong></th>
							</thead>
							<tr>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="numero" type="text" size="4" maxlength="4">&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="legajo" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="apellido" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="nombre" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="dni" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="mod" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
							</tr>
                            <tr>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="numero" type="text" size="4" maxlength="4">&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="legajo" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="apellido" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="nombre" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="dni" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="mod" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="calificacion" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="libro" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="folio" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>

							</tr>
                            <tr>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="numero" type="text" size="4" maxlength="4">&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="legajo" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="apellido" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="nombre" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="dni" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="mod" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="calificacion" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="libro" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="folio" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>

							</tr>
                            <tr>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="legajo" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="apellido" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="nombre" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="dni" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="mod" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="calificacion" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="libro" type="text" size="4" >&nbsp;</td>
								<td bordercolor="#000000"><input style="max-width: 50px;" name="folio" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>
                                <td bordercolor="#000000"><input style="max-width: 50px;" name="" type="text" size="4" >&nbsp;</td>

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
</body>
</html>