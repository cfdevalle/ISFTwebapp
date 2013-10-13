<style>
.table{
 text-align:center;
}
fieldset {
position: relative;
}
</style>
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
                        <label class="control-label" for="inputMateria">Turno</label>
                        <div class="controls">
                            <select id="select">
                                <option name="op1" value="1">Mañana</option>
                                <option name="op2" value="2">Tarde</option>
                                <option name="op3" value="3">Noche</option>
                            </select>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="inputCicloLectivo">Fecha Examen</label>
                        <div class="controls">
                            <input type="text" id="inputCicloLectivo" placeholder=" "/>
                        </div>
                    </div>
                   
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
