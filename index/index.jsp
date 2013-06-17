<%-- 
    Document   : wrapper
    Created on : 31-may-2013, 21:41:56
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="static/js/bootstrap.js"></script>
        <script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="static/js/jquery.ui.datepicker-es.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
            $("#date").datepicker({
                autoSize: true,
                changeMonth: true,
                changeYear: true
            });
            });
        </script>
        <link type="text/css" rel="stylesheet" href="static/css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="static/css/jquery-ui.css"/>
        <link type="text/css" rel="stylesheet" href="static/css/app-estilo.css"/>
        <link type="text/css" rel="stylesheet" href="static/css/bootstrap-responsive.css"/>
        <title>ISFT Nº179</title>
    </head>
    
    <body>
        <header class="page-header">
            
        </header>
        <div class="container">
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container">
                    <a class="brand" href="#">Gestión de Inscripciones</a>
                    <ul class="nav">
                        <li class="active"><a href="#"><i class="icon-home"></i>Inicio</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-book"></i>Inscripciones<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Finales</a></li>
                                <li><a href="#">Cursadas</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="icon-pencil"></i>Situacion Academica</a></li>
                        <li><a href="#"><i class="icon-calendar"></i>Horarios </a></li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i>Mi cuenta<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Mis datos</a></li>
                                <li><a href="#">Cambiar contrase&ntilde;a</a></li>
                                <li class="divider"/>
                                <li><a href="#"><i class="icon-remove-sign"></i> Cerrar sesi&oacute;n</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span4">
                    sdasd
                </div>    
                <div class="span4">
                    dasdas
                </div>
                <div class="span4">
                    dasdasd
                </div>
            </div>
            <div class="row" style="margin-top: 10px">
                <div class="span4">
                    dasdasda
                </div>
                <div class="span8">
                     dasdasd
                     
                </div>
            </div>
            <div class="row">
                <div class="span12 well">
                    dasdasd
                </div>
                <div class="span4">
                    dasdasda        
                            
                </div>
                <div class="span4">
                    dasdasdasd        
                </div>
                    
            </div>
            
            
            
        </div>
        <div id="pie">
                <p class="text-info">INSTITUTO ISFT-179</p>
        </div>
        
    </body>
</html>
