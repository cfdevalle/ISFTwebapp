
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
            function verPeticion(){
                $('.modal-body').load("jsp/sicsa/display/verPeticion.php");
                $('#myModal').modal('show');
            }
            function nuevaPeticion(){
                $('.modal-body').load("jsp/sicsa/display/nuevaPeticion.php");
                $('#myModal').modal('show');
            }
        </script>
            <div class="row-fluid">
                <div class="span12"> 
                    <ul class="nav nav-tabs">
                        <li> <a href="javascript:goPage(4001)">Situacion Academica</a></li>
                        <li class="active"> <a href="javascript:goPage(4002)">Mensajes</a></li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span10 offset1">
                    <h1> Mensajes <a style="float:right;" href="javascript:nuevaPeticion()" class="btn btn-primary" >Nuevo mensaje</a></h1>
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID)</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Titulo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>210</td>
                                <td>Respondido</td>
                                <td>14/06/2013</td>
                                <td>Mal ingreso de nota</td>
                                <td><a href="javascript:verPeticion()">Ver</a></td>
                            </tr>
                            <tr class="error">
                                <td>311</td>
                                <td>Esperando respuesta</td>
                                <td>17/07/2013</td>
                                <td>Ingreso de datos</td>
                                <td><a href="javascript:verPeticion()">Ver</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                </div>
                <div class="modal-body">
                </div>
            </div>
  
