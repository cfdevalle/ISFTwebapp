var seleccion;
function desinscribir(){
   var cant= $('input[name=cantidad_checkbox]').val();
   var i=0;
   var materias="";
   seleccion="";
   while(i<cant){
       var name="mat"+i;
       if($("#"+name).is(':checked')){
           if(seleccion!=""){
               seleccion+="@";
               materias+="<br>";
           }
           materias +=$('input[name='+name+']').val();
           seleccion += $('input[id='+name+']').val();
       }
       i++;  
   }
   $('#modalDesinscribir').modal('show');
   if(seleccion==""){
       mensaje_desinscribirse.innerHTML="No se ha elejido ninguna materia para desinscribirse";
       mensaje_desinscribirse2.innerHTML="";
   }else{
       mensaje_desinscribirse2.innerHTML="";
       mensaje_desinscribirse2.innerHTML+="<h5>Esta seguro que desea desinscribirse de las siguiente/s materias:</h5>";
       mensaje_desinscribirse2.innerHTML+=materias+"<br>";
       mensaje_desinscribirse.innerHTML="";
   }

}
function realizar_desinscripcion(){
    var parametros={
		param:seleccion,
		accion:'B'
		}		
	$.ajax({
	  type: 'POST',
	  url: 'desinscribir.sif',
	  data: parametros,
	  success: function(response){
                if(response.substring(0,5)=='ERROR'){
                    Notifier.warning(response.substring(6));
                }else{
                    Notifier.success(response);
                    setTimeout(function(){goPage(2002)},1000);
                }
	  },
	  error: function(response){
	  	Notifier.error(response);	
	  }
	});
}

function ingresarEmail(){
    $('#enviar_email').modal('show');
    $('#email').val('');
}

function enviarEmail(){
    var seleccion= $('input[name=email]').val();
    seleccion+="-Estado de Inscripcion";
    seleccion+="-Se a enviado uno o mas archivos adjunto con el estado actual de su inscripcion a finales";
    var parametros={
		param:seleccion,
		}
    $.ajax({
	  type: 'POST',
	  url: 'enviar.email',
	  data: parametros,
	  success: function(response){
                if(response==''){
                    Notifier.warning("Email no valido");
                }else{
                    Notifier.success(response);
                }
	  },
	  error: function(response){
	  	Notifier.error(response);	
	  }
	});
}
