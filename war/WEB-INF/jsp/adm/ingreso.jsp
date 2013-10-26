
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
       
        function carga(){
           var codigo = document.getElementById('carrera').value;
           $('#displayIngreso').load("adm.login?codPage=6024&carrera="+codigo);
          }
        function alta(){
            var codigo_carrera_o = <%=cod_carrera%>;
            var codigo_materia_o = <%=cod_materia%>;
            var codigo_carrera_d = document.getElementById('carrera').value;
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
               var url = "adm.login?codPage=6021"
               window.location.href = url;
               //console.log("fue enviado se cargo correctamente");
           },
           error:function(response){
                Notifier.error(response.statusText);
              // console.log("error de envio");
           }
        });
        }    
 </script>  
 <div class="row-fluid">
     <div class="span12">
         <div class="well">
      <div>
  <hr>
   <h4>Asignacion de equivalencia Final</h4>
    <br>
    
    
    
   Carrera Numero : <%=cod_carrera%> 
   
   Materia Codigo : <%=cod_materia%>
   
   <hr>
   <h4>Equivalencia con :</h4>
   
   <br>
   
   Carrera destino : <tag:ComboCarrera />
   
  
   <div id="displayIngreso"></div>
   
   <br>
   <hr>
   <input name="update" class="btn-primary" value="PROCESAR EQUIVALENCIA" type="button" onclick="alta();">
 
      </div>
 </div>
     </div>
 