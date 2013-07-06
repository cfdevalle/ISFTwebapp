<html>
    <head>
        <link type="text/css" rel="stylesheet" href="../../../static/css/bootstrap.css">
        <%@include file="../../includes/metas_inc.jsp" %>
        <title>Inscripcion a Finales</title>
        <style type="text/css">td{white-space:nowrap;text-align:left;}h4{text-align:center;}</style>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
        <script language="javascript">
            function seleccionar(){
            /*    if($("#"+"algebra_1").attr("checked")==false){
                    $("#"+"algebra_2").attr("disabled","disabled");
                }
                else{
                    $(radio).removeAttr('checked');
                    $("#"+"algebra_2").removeAttr('disabled');
                    $("#"+"algebra_2").attr("disabled","");
                }*/

                if(document.getElementById("algebra_1").checked==true){
                    document.getElementById("algebra_2").disabled=true;
                }else{
                    document.getElementById("algebra_2").disabled=false;
                }
            }
            
           
            function unCheckAll(val){
                document.getElementsByName(val).checked=false;
            }
            
            /*function unCheckAll(val){
                var elementos=document.getElementsByName(val);
                for(i=0;i<elementos.lenght();i++){
                    document.elementos[i].checked=false;
                }
            }*/
            
        </script>

        
    </head>
    <body>
            <%@include file="../../includes/encabezado_inc.jsp" %>
            <%@include file="../includes/sif_menu.jsp" %>
            <div class="span12" style="min-height: 600px">
                    <h1 align="center"><u>Inscripcion a Finales</u></h1>
                    <br>
                    <br>
                    <form name="formu">
                    <table border="2" align="center" width="500">
                        <%--  INGRESO DE TURNO --%>
                        <tr align="center" >
                            <td colspan="5" ><h4>TURNO MAÑANA</h4></td>
                        </tr>
                        
                        <%-- INGRESO DE FECHAS --%>
                        <tr align="center" >
                            <td><h4>26/11</h4></td>
                            <td><h4>27/11</h4></td>
                            <td><h4>28/11</h4></td>
                            <td><h4>29/11</h4></td>
                            <td><h4>30/11</h4></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio" name="27/11" id="algebra_1" onchange="seleccionar()">&nbsp&nbspALGEBRA</td>
                            <td><input type="radio" name="28/11">&nbsp&nbspANALISIS 1</td>
                            <td><input type="radio" name="29/11">&nbsp&nbspPROGRAMACION 1</td>
                            <td><input type="radio" name="30/11">&nbsp&nbspADM. DE LAS ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio" name="27/11" onchange="seleccionar()">&nbsp&nbspINGLES 1</td>
                            <td><input type="radio" name="28/11">&nbsp&nbspEDI 1</td>
                            <td><input type="radio" name="29/11">&nbsp&nbspSIST OPERATIVOS</td>
                            <td>-</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td><input type="radio" name="29/11">&nbsp&nbspEDI 3</td>
                            <td>-</td>
                        </tr>

                        <%--  INGRESO DE TURNO --%>
                        <tr align="center" >
                            <td colspan="5" ><h4>TURNO NOCHE</h4></td>
                        </tr>
                        
                         <%-- INGRESO DE FECHAS --%>
                        <tr align="center" >
                            <td><h4>26/11</h4></td>
                            <td><h4>27/11</h4></td>
                            <td><h4>28/11</h4></td>
                            <td><h4>29/11</h4></td>
                            <td><h4>30/11</h4></td>
                        </tr>

                        <%--  INGRESO DE MATERIAS --%>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio" name="27/11" onchange="seleccionar()">&nbsp&nbspEDI 1</td>
                            <td><input type="radio" name="28/11" id="algebra_2">&nbsp&nbspALGEBRA</td>
                            <td><input type="radio" name="29/11">&nbsp&nbspPROGRAMACION 1</td>
                            <td><input type="radio" name="30/11">&nbsp&nbspINGLES 1</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio" name="27/11" onchange="seleccionar()">&nbsp&nbspINGLES 1</td>
                            <td><input type="radio" name="28/11">&nbsp&nbspEDI 1</td>
                            <td><input type="radio" name="29/11">&nbsp&nbspINT. SIST. INF.</td>
                            <td><input type="radio" name="30/11">&nbsp&nbspADM. ORG.</td>
                        </tr>
                        <tr align="center">
                            <td>-</td>
                            <td><input type="radio" name="27/11" onchange="seleccionar()">&nbsp&nbspEDI 2</td>
                            <td><input type="radio" name="28/11">&nbsp&nbspBASE DE DATOS</td>
                            <td>-</td>
                            <td><input type="radio" name="30/11">&nbsp&nbspSIST. INF. 1</td>
                        </tr> 
                        
                        <tr>
                            <td>-</td>
                            <td><h4><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" value="27/11" onClick="unCheckAll(this.value)" /></h4></td>
                            <td><h4><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" value="28/11" onClick="unCheckAll(this.value)"  /></h4></td>
                            <td><h4><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" value="29/11" onClick="unCheckAll(this.value)"  /></h4></td>
                            <td><h4><input type="image" src="../../../static/images/sif/error.png" height="25" width="25" value="30/11" onClick="unCheckAll(this.value)"  /></h4></td>
                        </tr>
                    </table>
                    
                    <br>
                    <br>    
                    <%-- Botones de navegacion --%>
                    <br>
                    <br>
                    <table align="center">
                        <tr>
                            <td width="200"><input type="button" value="Guardar Inscripcion"></td>
                        </tr>
                    </table>
                    </form>
                </div>
            <%@include file="../../includes/pie_inc.jsp" %>
    </body>
</html>
