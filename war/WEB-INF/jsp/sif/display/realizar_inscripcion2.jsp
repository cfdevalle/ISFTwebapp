<script type="text/javascript" src="static/js/sif/realizar_inscripcion.js"></script>
<style>
    .table td {
        text-align: center;   
    }
</style>

        <div id="inscribir" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Resultado de la inscripcion</h3>
            </div>
            <div class="modal-body">
                La inscripcion se a realizado con exito y se a enviado un email a la dir a@a.com <br>
            </div>
            <div class="modal-footer">
                <a role="button" class="btn">Modificar direccion de email</a>
                <a class="btn" data-dismiss="modal" aria-hidden="true">cancelar</a>
                <a href="javascript:goPage(2002)" class="btn btn-primary">aceptar</a>
            </div>
        </div>
            <div class="row-fluid">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li><a href="javascript:goPage(2001)">Bienvenido</a></li>
                    <li><a href="javascript:goPage(2003)">Cronograma Finales</a></li>
                    <li class="active"><a href="javascript:goPage(2004)">Inscripcion a Finales</a></li>
                    <li><a href="javascript:goPage(2002)">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            <div class="row-fluid">
            <div class="span12" id="realizar_inscripcion">
                    <h1 align="center"><u>Inscripcion a Finales</u></h1>
                    <br>
                    <br>
                        <h5 align="center">Las materias marcadas en verde son aquellas a las que aun no se ah inscripto, en cambio aquellas que estan marcadas con rojo el alumno/a ya se encuentra inscripto/a y cualquiera que se seleccione con ese color se tomara como una modificacion.</h5>
                    
                    <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
                    <tag:FinalesInscribibles/>
                    <div id="datos"></div>
                    <br>
                    <br>    
                    <%-- Botones de navegacion --%>
                    <br>
                    <br>
                    <table align="center">
                        <tr>         
                            <td width="200"><input type="button" onclick="inscribir()" class="btn btn-default" value="Inscribir"></td>
                            <td width="200"><a class="btn btn-default" href="javascript:goPage(2004)">Actualizar</a></td>
                        </tr>
                    </table>
                </div>
            </div>         