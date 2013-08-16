<html>
    <head>
        <%@include file="jsp/includes/metas_inc.jsp" %>
        <title>Prueba Wrapper</title>
    </head>
    <body>

 
            <div class="row-fluid">

                <div class="span12">
                    <div class="well">
                            <table>
                                <tr>
                                    <td><div style="border: 1px solid;"><img src="static/images/logo.png"></div></td>
                                    <td style=" width: 800px;">   <H2>I.S.F.T. N� 179 Dr. Carlos Pellegrini</h2>
                                        
                                          <p class="muted">Excelencia Acad�mica - Solidez Institucional - Salida Laboral</p>
                                    </td>
                                  
                                    <td><%@include file="jsp/sicnod/display/login.jsp" %></td>
                                </tr> 
                                
                                    
                                
                            </table>
                           
                            <div style="background-image:url(static/images/portada.png); height: 100px;"></div>
                                        
                    </div>
                </div>
                
            </div>

       <div class="row" style=" max-height: 400px; overflow-y: auto;  ">
                
                <div class="span2">
                  
                    <div class="tabbable tabs-left">
                     <ul class="nav nav-tabs"> 
                         
                         <li class="active"><a href="javascript:goPage(6001)">Visi�n y Misi�n</a></li>
                         <li><a href="javascript:goPage(6002)">Staff</a></li>
                         <li><a href="javascript:goPage(6003)">Docentes</a></li>
                         <li><a href="javascript:goPage(6004)">Periodico</a></li>
                         <li><a href="javascript:goPage(6007)">Biblioteca</a></li>
                         <li><a href="javascript:goPage(6005)">Normativa</a></li>
                         <li><a href="javascript:goPage(6006)">Contacto</a></li>
                         <li class="divider"></li>
                         <li><h6>CARRERAS</h6></li> 
                         <li class="divider"></li>
                         <li><a href="javascript:goPage(6009)">Administraci�n General</a></li>
                         <li><a href="javascript:goPage(6010)">Servicios Gastronimicos</a></li>
                         <li><a href="javascript:goPage(6011)">Industria Textil</a></li>
                         <li><a href="javascript:goPage(6012)">Instalaci�n y Mantenimiento</a></li>
                         <li><a href="javascript:goPage(6013)">Analisis De Sistemas</a></li>
                         <li><a href="javascript:goPage(6014)">Turismo</a></li>
                         <li><a href="javascript:goPage(6015)">Seguridad e Higiene Industrial</a></li>
                         <li><a href="javascript:goPage(6016)">Logistica</a></li>
                         <li><a href="javascript:goPage(6017)">Desarrollo de Aplicaciones</a></li>
                         <li><a href="javascript:goPage(6018)">Automatizaci�n y Robotica</a></li>
                            
                     </ul>
                   
                   
                    </div>
     
                </div>
                <div class="span10" id="div_screen"><%@include file="jsp/display/carreras/sistemas.jsp" %></div>
         </div> 
                     
                        
            <%@include file="jsp/includes/pie_inc.jsp" %>
            
        
    </body>
</html>
