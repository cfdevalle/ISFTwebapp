
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
                                    <td style=" width: 200px;"><div style="border: 1px solid;"><a href="javascript:goPage(6019)"><img src="static/images/logo.png"></a></div></td>
                                    <td style=" width: 800px;"><a href="javascript:goPage(6019)">   <H2>I.S.F.T. N° 179 Dr. Carlos Pellegrini</h2></a>
                                        
                                          <p class="muted">Excelencia Acad&eacute;mica - Solidez Institucional - Salida Laboral</p>
                                    </td>
                                  
                                    <td>
                                        
                                        <%@include file="sicnod/display/login.jsp" %>
                                    </td>
                                </tr> 
                                
                                    
                                
                            </table>
                           
                            <div style="background-image:url(static/images/portada.png); height: 100px;"></div>
                                        
                    </div>
                </div>
             
</div>
<%@include file="includes/encabezado_inc.jsp" %>
<div class="row" >
                
                <div class="span12">
                        <div  id="div_screen">
            
                        </div>
                </div>
</div>
           <%@include file="includes/pie_inc.jsp" %>
            
        
    </body>
</html>
<%}else{%>
    <script>
    var url = "modulo.go?codPage=9404";
    window.location.href = url;
    </script>
<%}%>
