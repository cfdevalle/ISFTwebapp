<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="/ISFTwebapp/static/js/adm/libro_matriz.js"></script>
        <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="/ISFTwebapp/static/js/jquery.ui.datepicker-es.js"></script>
        <script type="text/javascript" src="/ISFTwebapp/static/notifier/notifier.js"></script>
        <script type="text/javascript" src="/ISFTwebapp/static/js/bootstrap.js"></script>
        <!--script src="/ISFTwebapp/static/js/jquery-1.8.3.js"--></script>
	<script src="/ISFTwebapp/static/js/ui/jquery.ui.core.js"></script>
	<script src="/ISFTwebapp/static/js/ui/jquery.ui.widget.js"></script>
	<script src="/ISFTwebapp/static/js/ui/jquery.ui.datepicker.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/adm/libro_matriz.css"/>
        <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap-responsive.css"/>
        <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/adm/libro_matriz.css"/>
        <link rel="stylesheet" href="/ISFTwebapp/static/css/ui/jquery.ui.all.css">
        <link rel="stylesheet" href="/ISFTwebapp/static/css/demos.css">
        <title>Administraci&oacute;n</title>
        <script>
	$(function() {
            $( "#datepicker" ).datepicker();
            $( "#format" ).change(function() {
			$( "#datepicker" ).datepicker( "option", "dateFormat","dd-mm-yy" );
		});
	});
	
	</script>
    </head>
    <body>
        <!--input id="datepicker" type="text"-->
        <H2>Libro Matriz</H2>
        <HR>
        <DIV id="ingresarDatos">
            <TABLE class='table table-hover table-bordered table-condensed'>
                <TR>
                    <TD>Buscar por legajo</TD>
                    <TD><INPUT id="txt_legajo"  onkeypress="checkKey(event);"></TD>
                    <TD><INPUT class="btn btn-primary" type="button" onClick="enviar();" value="BUSCAR"</TD>
                </TR>
            </TABLE>
        </DIV>
        <HR/>
        <DIV id="div_alumnos">
            
        </DIV>
        
    </body>
</html>
