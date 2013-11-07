<% 
if(request.getSession(false).getAttribute("alumno")!=null){ %>
<html>
    <head>
        <%@include file="includes/metas_inc.jsp" %>
       
        <title>ISFT 179-usuario</title>
    </head>
    <body>

 
            <div class="row-fluid">

                <div class="span12">
                    <div class="well">
                            <table>
                                <tr>
                                    <td>   </td>
                                    <td style=" width: 8%;"><img src="static/images/logo.png" style="border: solid 1px "></td>
                                   <td style=" width: 72%;"><a href="#"><H2>I.S.F.T. N° 179 Dr. Carlos Pellegrini</h2></a>
                                        
                                         <p class="muted">Excelencia Acad&eacute;mica - Solidez Institucional - Salida Laboral</p>
                                    </td>
                                  
                                    <td style=" width: 20%;">
                                        
                                     <%@include file="sicnod/display/login.jsp" %>
                                    </td>
                                </tr> 
                                
                                    
                                
                            </table>
                           
                            <div style="background-image:url(static/images/portada.png); height: 100px;"></div>
                                        
                    </div>
                </div>
             
</div>
<%@include file="includes/encabezado_inc.jsp" %>
<div class="row-fluid" >
                
                <div class="span12">
                        <div  id="div_screen" >
                            <p style="text-align: center"> <img src="static/images/estudiando2.jpg"></p>
                        </div>
                </div>
</div>
          
            
        
    </body>
</html>
<%}else{%>
    <script>
    var url = "modulo.go?codPage=9404";
    window.location.href = url;
    </script>
<%}%>
