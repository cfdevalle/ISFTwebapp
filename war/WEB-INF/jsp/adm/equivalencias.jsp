

<html>
<head> <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/jquery-ui.css"/>
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-1.9.1.min.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-ui.min.js"></script>
       <%@ taglib uri="/WEB-INF/tld/taglib.tld" prefix="tag" %>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap.css"/>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/css/bootstrap-responsive.css"/>
       <link type="text/css" rel="stylesheet" href="/ISFTwebapp/static/notifier/notifier.css">
       <script type="text/javascript" src="/ISFTwebapp/static/js/bootstrap.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/js/jquery-ui.min.js"></script>
       <script type="text/javascript" src="/ISFTwebapp/static/notifier/notifier.js"></script>
    <script>
       
        function carga(){
           var cod_carrera = document.getElementById('carrera').value;
           //console.log("cod_materia"+cod_materia);
           var param={
                  carrera:cod_carrera
               };
               
           $('#display').load("adm.login?codPage=6022&carrera="+cod_carrera);//+legajo);
           $('#altas').load("adm.login?codPage=6025");
           /*$.ajax({
               type:'POST',
               url:'redirec.go?codPage=6021',
               data:param,
           
           success:function(response){
               console.log("fue enviado");
           },
           error:function(response){
               console.log("error de envio");
           }
        });*/
       }
       function ingresar(codigo){
           
           var cod_carrera = document.getElementById('carrera').value;
           //console.log("este es mi codigo materia",+codigo+" codigo materia= "+cod_carrera);
        
              $('#altas').load("adm.login?codPage=6023&carrera="+cod_carrera+"&cod_materia="+codigo);
              
             
     
       }
       function borrar(materiaD,carreraD,materiaO,carreraO){
            var cod_carrera = document.getElementById('carrera').value;
            var accion_a="2";
            //console.log("mis datos cod carrera d : "+materiaD+"codigo materia d: "+carreraD);
            var param={
                  carrera_o:carreraO,
                  materia_o:materiaO,
                  carrera_d:carreraD,
                  materia_d:materiaD,
                  accion:accion_a
               };
            $.ajax({
               type:'POST',
               url:'mandar.equivalencias',
               data:param,
           
           success:function(response){
               $('#display').load("adm.login?codPage=6022&carrera="+cod_carrera)
               Notifier.success("Borrado sastifactorio");
               
               //console.log("fue enviado se cargo correctamente");
           },
           error:function(response){
                Notifier.error(response.statusText);
              // console.log("error de envio");
           }
        });
        } 
       
    </script>
</head>

<body onload="carga()">
       <div class="row-fluid">
         
        <div class="span8">
             <div class="well">
                    <h4> Asignacion de Equivalencias </h4>
                    <hr>
                    Carrera : <tag:ComboCarrera/> 
                   
                    <div id="display"></div>
             </div>
               
        </div>
        <div class="span4">
            <div class="well">
                    <div id="altas"></div>
            </div>
        </div>
       
     </div>      
</body>
</html>