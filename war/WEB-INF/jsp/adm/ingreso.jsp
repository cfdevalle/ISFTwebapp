<%@page import="org.isft.logic.collection.CollectionMateria,org.isft.domain.Materia,java.util.Vector,java.util.HashMap"%>
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
               $('#altas').load("adm.login?codPage=6025");
               //console.log("fue enviado se cargo correctamente");
           },
           error:function(response){
                Notifier.error("Equivalencia ya asignada");
              // console.log("error de envio");
           }
        });
        }
       
 </script>  
 
    
   
   
  
 
  
<div class="modal-header">

<h3 id="myModalLabel">Asignacion De equivalencias</h3>

</div>
<div class="modal-body">
    
    
    
   
    
  
    
    
    
    
    Carrera Numero : <%=cod_carrera%><br/>
   
  
    <% 
    CollectionMateria materias= new CollectionMateria(); 
    HashMap parametros=new HashMap();
    parametros.put("cod_materia",cod_materia);
    Vector vectorMaterias=materias.select(parametros);
    Materia materia=new Materia();
    for(int i=0;i<vectorMaterias.size();i++){
                    
                    materia=(Materia)vectorMaterias.get(i);
                   
    }                              
               
               
             
               
  %> 
    
    
    
 Materia : <%=cod_materia%> - <%=materia.getNombre()%>
 <hr/>
   
   <h4>Equivalencia con :</h4>
   
  
   
   Carrera destino:<tag:ComboCarrera cod_carrera_Exeptuar="<%=cod_carrera%>"/>
   
    
   <div id="displayIngreso"> </div>
    

</div>
   
<div class="modal-footer">
    
   <input name="update" class="btn-primary" value="PROCESAR EQUIVALENCIA" type="button" onclick="alta(); " data-dismiss="modal" aria-hidden="true">
  
  
  <input class="btn" data-dismiss="modal" aria-hidden="true" value="cancelar">


</div>
   
  
 
   
