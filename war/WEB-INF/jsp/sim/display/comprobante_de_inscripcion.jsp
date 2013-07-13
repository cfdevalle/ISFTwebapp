<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Sistema de Inscripcion a Materias</title>
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <div class="row">
            <div class="span12"> 
               
            	<ul class="nav nav-tabs">
                    <li class="active">               <a href="modulo.go?codPage=1002">inscripcion a materias</a></li>
                    <li>               <a href="modulo.go?codPage=1003">modificar inscripcion</a></li>
                    <li>               <a href="modulo.go?codPage=1004">eliminar materias inscriptas</a></li>
                </ul>

            
            </div>
            </div>
            <div class="row">
                <div class="span12">
				
					<p>COMPROBANTE DE INSCRIPCIÓN Nº242</p>
					<hr></br>
					Fecha: <script> var f = new Date(); document.write(f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear()); </script></br>
					Carrera: Tecnicatura Superior en Analisis de Sistemas</br>
					Estudiante: Peres Juan.</br>
					Nº Legajo: 12345 </br>
					Ciclo: 2013 </br>
					<table border="1">
						<tbody>
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
								<td>Recurso</td>
								<td>Precencial</td>
								<td>1ºA Noche</td>
							</tr>
		
						</tbody>
					</table>
					<br/>
					<table>	
						<tr>
							<td><form><input value="Descargar" onclick="guardar_archivo()" id="documento" type="submit"></form>	</td>
							<td><form method="post" action="modulo.go?codPage=1001"> <input type="submit" value="Cancelar" > </form></td>
						</tr>
					</table>
				
                </div>
            </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
