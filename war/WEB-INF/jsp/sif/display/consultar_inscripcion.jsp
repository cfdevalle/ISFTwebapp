<script type="text/javascript" src="static/js/facebox.js"></script>
<script type="text/javascript" src="static/js/sif/consultar_inscripcion.js"></script>
<link type="text/css" rel="stylesheet" href="static/css/facebox.css"/>

<style>
    .table td {
        text-align: center;   
    }
</style>

        <div id="modalDesinscribir" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Materias a desinscribir</h3>
            </div>
            <div class="modal-body" id="mensaje_desinscribirse"></div>
            <div class="modal-body" id="mensaje_desinscribirse2"></div>
            <div class="modal-footer">
                <a class="btn" data-dismiss="modal" aria-hidden="true">cancelar</a>
                <input type="button" onclick="realizar_desinscripcion()" data-dismiss="modal" class="btn btn-primary" value="Aceptar">    
            </div>
        </div>

        <div id="enviar_email" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Enviar Email</h3>
            </div>
            <p><b>Por favor ingrese una direccion de email para enviarle el estado de inscripcion</b></p>
            <input type="text" name="email" id="email">
            <div class="modal-footer">
                <a class="btn" data-dismiss="modal" aria-hidden="true">cancelar</a>
                <input type="button" onclick="enviarEmail()" data-dismiss="modal" class="btn btn-primary" value="Aceptar">    
            </div>
        </div>
        
            <div class="row-fluid">
            <div class="span12"> 
            	<ul class="nav nav-tabs">
                    <li><a href="javascript:goPage(2001)">Bienvenido</a></li>
                    <li><a href="javascript:goPage(2003)">Cronograma Finales</a></li>
                    <li><a href="javascript:goPage(2004)">Inscripcion a Finales</a></li>
                    <li class="active"><a href="javascript:goPage(2002)">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            
            <div class="span12" id="pagina_consultar_inscripcion">   
                    <h1 align="center"><u>Materias Inscripto/a</u></h1>
                    <br>
                    <br>
                    <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
                    <div id="div_desinscripcion"></div>
                    <tag:FinalesInscriptos/>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><input type="button" onclick="ingresarEmail()" class="btn btn-default" value="Enviar Email"></td>
                            <td width="200"><input type="button" onclick="desinscribir()" class="btn btn-default" value="Desinscribirse"></td>
                            <td width="200"><a class="btn btn-default" href="generar.rpt?cod=2000&param=p_cod_carrera=1@p_legajo=6030&file=ReporteFinalesInscriptos">Descargar</a>
                        </tr>
                    </table>
                    <br>
            </div>
   