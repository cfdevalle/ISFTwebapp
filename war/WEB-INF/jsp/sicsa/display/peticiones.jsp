
        <script type="text/javascript" src="static/js/facebox.js"></script>
        <link type="text/css" rel="stylesheet" href="static/css/facebox.css"/>
        <title>Consulta de Situaci&oacute;n acad&eacute;mica</title>
        <script type="text/javascript">
        jQuery(document).ready(function($) {
          $('a[rel*=facebox]').facebox() 
        });
            function nuevaPeticion(){
                //console.log(1);

            }
        </script>
            <div class="row-fluid">
                <div class="span12"> 
                    <ul class="nav nav-tabs">
                        <li> <a href="javascript:goPage(4001)">Situacion Academica</a></li>
                        <li class="active"> <a href="javascript:goPage(4002)">Peticiones</a></li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span10 offset1">
                    <h1> Peticiones <a style="float:right;" href="javascript:goPage(4003)" rel="facebox" class="btn btn-primary" >Nueva peticion</a></h1>
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
                                <td>Respondida</td>
                                <td>14/06/2013</td>
                                <td>Mal ingreso de nota</td>
                                <td><a href="javascript:goPage(4004)&idPeticion=210" rel="facebox">Ver</a></td>
                            </tr>
                            <tr class="error">
                                <td>311</td>
                                <td>Esperando respuesta</td>
                                <td>17/07/2013</td>
                                <td>Ingreso de datos</td>
                                <td><a href="javascript:goPage(4004)&idPeticion=210" rel="facebox">Ver</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
  
