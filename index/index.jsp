<% 
if(request.getSession(false).getAttribute("alumno")==null){ %>
<script>
    function foco(){
        document.getElementById("txt_usuario").focus();
    }
</script>
<html>
    <head>
        <%@include file="jsp/includes/metas_inc.jsp" %>
       
        <title>ISFT 179</title>
    </head>
    <body onload="foco()">

 
            <div class="row-fluid">

                <div class="span12">
                    <div class="well">
                            <table>
                                <tr>
                                    <td style=" width: 100px;"><a href="javascript:goPageNoLogin(6019)"><img src="static/images/logo.png" style="border: solid 1px "></a></td>
                                    <td style=" width: 800px;"><a href="javascript:goPageNoLogin(6019)">   <H2>I.S.F.T. Nº 179 Dr. Carlos Pellegrini</h2></a>
                                        
                                          <p class="muted">Excelencia Acad&eacute;mica - Solidez Institucional - Salida Laboral</p>
                                    </td>
                                  
                                    <td>
                                        
                                        <%@include file="jsp/sicnod/display/login.jsp" %>
                                    </td>
                                </tr> 
                                
                                    
                                
                            </table>
                           
                            <div style="background-image:url(static/images/portada.png); height: 100px;"></div>
                                        
                    </div>
                </div>
                <a name="miancla"></a>
            </div>

       <!--<div class="row" style=" max-height: 400px; overflow-y: auto;  ">-->
       <div class="row-fluid" >
           
                <div class="span2">
                  
                    <div class="well">
                     <ul class="nav nav-list"> 
                         <li class="nav-header">Instituci&oacute;n</li> 
                         <li class="divider"></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6019)">Inicio</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6002)">Inscripcion</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6003)">Docentes</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6004)">Peri&oacute;dico</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6005)">Normativa</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6006)">Contacto</a></li>
                         <li class="nav-header">CARRERAS</li> 
                         <li class="divider"></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6009)">Administraci&oacute;n General</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6010)">Servicios Gastron&oacute;micos</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6011)">Industria Textil</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6012)">Instalaci&oacute;n y Mantenimiento</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6013)">An&aacute;lisis De Sistemas</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6014)">Turismo</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6015)">Seguridad e Higiene Industrial</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6016)">Log&iacute;stica</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6017)">Desarrollo de Aplicaciones</a></li>
                         <li><a class="goTop" href="javascript:goPageNoLogin(6018)">Automatizaci&oacute;n y Rob&oacute;tica</a></li>
                         <li class="nav-header">Links</li> 
                         <li class="divider"></li>
                         <li><a class="goTop" href="https://www.google.com.ar">Google</a></li>
                         <li><a class="goTop" href="http://es.wikipedia.org/">Wikipedia</a></li>
                         <li><a class="goTop" href="http://www.unm.edu.ar/">Universidad Nacional De Moreno</a></li>
                         <li><a class="goTop" href="http://cooperadora179moreno.blogspot.com.ar/">Blog De Coperadora</a></li>
                            
                     </ul>
                   
                   
                    </div>
     
                </div>
                
                <div class="span10" id="div_screen">
                   
                    <%@include file="jsp/display/informativo/portada.jsp" %>
                   
                </div>
         </div>
               
                        
            <%@include file="jsp/includes/pie_inc.jsp" %>
            
        
    </body>
</html>
<%}else{%>
    <script>
    var url = "modulo.go?codPage=6020";
    window.location.href = url;
    </script>
<%}%>
               
        