
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
        function eliminarMensaje(id, elm){
            var c = confirm("Esta seguro que desea eliminar el mensaje "+id+"?");
            if(c){
                var tr = elm.parentNode.parentNode;
                tr.remove();
                return false;
            }
        }
        function verPeticion(){
            $('.modal-body').load("jsp/sicsa/display/verPeticion.php");
            $('#myModal').modal('show');
        }
        </script>
            <!--<div class="row">
                <div class="span12"> 
                    <ul class="nav nav-tabs">
                        <li> <a href="modulo.go?codPage=4001">Situacion Academica</a></li>
                        <li class="active"> <a href="modulo.go?codPage=4002">mensajes</a></li>
                    </ul>
                </div>
            </div>-->
            <div class="row-fluid">
                <div class="span10 offset1">
                    <h1> Mensajes <a style="float:right;" href="javascript:" class="btn btn-primary" >Ver mensajes sin responder</a></h1>
                    <p>
                        <span>Carrera: 
                            <select>
                                <option value="">Sistemas</option>
                                <option value="">Turismo</option>
                                <option value="">Seguridad e higiene</option>
                            </select>
                            <input type="button" value="filtrar">
                        </span>
                    </p>
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th></th>
                                <th>ID)</th>
                                <th>Alumno</th>
                                <th>Carrera</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Titulo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td><input type="checkbox"></td>
                                <td>210</td>
                                <td>Garcia Nicolas</td>
                                <td>Sistemas</td>
                                <td>Respondida</td>
                                <td>14/06/2013</td>
                                <td>Mal ingreso de nota</td>
                                <td>
                                    <a href="javascript:verPeticion()">Contestar</a>
                                    <a href="javascript:" onclick="eliminarMensaje(210, this);">Eliminar</a>
                                </td>
                            </tr>
                            <tr class="error">
                                <td><input type="checkbox"></td>
                                <td>210</td>
                                <td>Garcia Nicolas</td>
                                <td>Sistemas</td>
                                <td>Sin respuesta</td>
                                <td>14/06/2013</td>
                                <td>Mal ingreso de nota</td>
                                <td>
                                    <a href="javascript:verPeticion()">Contestar</a>
                                    <a href="javascript:" onclick="eliminarMensaje(210, this);">Eliminar</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p><input type="button" class="btn btn-primary" value="Eliminar"></p>
                </div>
            </div>
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                </div>
                <div class="modal-body">
                </div>
            </div>
  
