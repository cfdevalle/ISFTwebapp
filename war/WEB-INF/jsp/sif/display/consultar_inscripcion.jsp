<script type="text/javascript" src="static/js/facebox.js"></script>
<link type="text/css" rel="stylesheet" href="static/css/facebox.css"/>

<style>
    .table td {
        text-align: center;   
    }
</style>

        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Envio de Email</h3>
            </div>
            <div class="modal-body">
                Se a enviado un email a la dir a@a.com <br>
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
                    <li><a href="javascript:goPage(2004)">Inscripcion a Finales</a></li>
                    <li class="active"><a href="javascript:goPage(2002)">Materias Inscripto/a</a></li>
                </ul>
            </div>
            </div>
            
            <div class="span12">   
                    <h1 align="center"><u>Materias Inscripto/a</u></h1>
                    <br>
                    <br>
                    <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
                    <tag:FinalesInscriptos/>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><a class="btn">Desinscribirse</a></td>
                            <td width="200"><a class="btn">Descargar</a></td>
                            <td width="200"><a href="#myModal" role="button" class="btn" data-toggle="modal">Enviar email</a></td>
                        </tr>
                    </table> 
                    <br>
            </div>
