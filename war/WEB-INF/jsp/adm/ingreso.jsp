
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-1.9.1.min.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-ui.min.js"></script>
       <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap.css"/>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap-responsive.css"/>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/notifier/notifier.css">
       <script type="text/javascript" src="/ISFTwebapp/static/js/bootstrap.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-ui.min.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/notifier/notifier.js"></script>
<% String cod_carrera = request.getParameter("carrera");  
   String cod_materia = request.getParameter("cod_materia");  

   
   %>
 <script>
       
        function cargaE(){
           var codigo = document.getElementById('carreraE').value;
           $('#displayIngreso').load("adm.login?codPage=6024&carrera="+codigo);
          }
        function alta(){
            var codigo_carrera_o = <%=cod_carrera%>;
            var codigo_materia_o = <%=cod_materia%>;
            var codigo_carrera_d = document.getElementById('carreraE').value;
            var codigo_materia_d = document.getElementById('materia').value;
            var accion_a="1";
            //console.log("mis datos cod carrera o: "+codigo_carrera_o+"codigo materia o: "+codigo_materia_o+" materias destino cod carrera desti"+codigo_carrera_d+"codigo materia dest: "+codigo_materia_d);
            var param={
                  carrera_o:codigo_carrera_o,
                  materia_o:codigo_materia_o,
                  carrera_d:codigo_carrera_d,
                  materia_d:codigo_materia_d,
                  accion:accion_a
               };
            $.ajax({
               type:'POST',
               url:'mandar.equivalencias',
               data:param,
           
           success:function(response){
              
               Notifier.success("ingreso satisfactorio");
               $('#display').load("adm.login?codPage=6022&carrera="+<%=cod_carrera%>);
               //console.log("fue enviado se cargo correctamente");
           },
           error:function(response){
                Notifier.error("Equivalencia ya asignada");
              // console.log("error de envio");
           }
        });
        }
        function cerrar(){
          $('#altas').load("adm.login?codPage=6025");
        }
 </script>  
 
    <h4>Alta de Equivalencia</h4>
    <hr>
  
    <br>
    
    
    
   Carrera Numero : <%=cod_carrera%> 
   
   Materia Codigo : <%=cod_materia%>
   
   <hr>
   <h4>Equivalencia con :</h4>
   
  
   
   Carrera destino:<tag:ComboCarreraEquivalencia cod_carrera="<%=cod_carrera%>" />
   
    <br>
   <div id="displayIngreso"></div>
   
   <br>
  
   <input name="update" class="btn-primary" value="PROCESAR EQUIVALENCIA" type="button" onclick="alta();">
   <input name="update" class="btn-primary" value="Cerrar" type="button" onclick="cerrar();">
  <hr>