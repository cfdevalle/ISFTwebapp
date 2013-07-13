            <div class="row-fluid">
            <div class="span12"> 
               
            	<ul class="nav nav-tabs">
                    <li ><a href="javascript:goPage(1002)">inscripcion a materias</a></li>
                    <li class="active">              <a href="javascript:goPage(1003)">modificar inscripcion</a></li>
                    <li>               <a href="javascript:goPage(1004)">eliminar materias inscriptas</a></li>
                </ul>

            
            </div>
            </div>
            
            
            <div class="row-fluid">
                <div class="span12" >
				
				
					<form method="post" action="javascript:goPage(1005)">
	
					<table border="1">
						<tr>
							<td>Cod. Mat.</td>
							<td>Materia</td>			
							<td>Condición</td>			
							<td>Modalidad</td>			
							<td>Curso y Turno</td>			
						</tr>
		
						<tr>
							<td>102</td>
							<td>Algebra</td>
							<td> <select id="slct1"><option>Recurso</option><option>Coherte</option></Select> </td>
							<td> <select id="slct2"><option>Presencial</option><option>No Presencial</option></Select> </td>
							<td> <select id="slct3"><option>1ºA Mañana</option><option>1ºA Tarde</option><option>1ºA Noche</option><option>1ºB Mañana</option><option>1ºA Noche</option></Select> </td>
						</tr>
					</table>
					<br/>
					
					<table>	
						<tr>
							<td><input type="submit" value="Guardar cambios" id="insc"></form></td>
							<td><form method="post" action="javascript:goPage(1001)"><input type="submit" value="Cancelar"></form></Td>
						</tr>
					</table>
				
                </div>
            </div>
