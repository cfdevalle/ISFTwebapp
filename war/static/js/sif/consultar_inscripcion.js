var seleccion="";
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
    if(seleccion==""){
        
    }else{
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
}

function ingresarEmail(){
    $('#enviar_email').modal('show');
    $('#email').val('');
}

function enviarEmail(){
    var datos= $('input[name=email]').val();
    if(!validar_email(datos)){
        Notifier.warning("Email no valido.");
    }else{
        datos+="-Estado de Inscripcion";
        datos+="-Se a enviado uno o mas archivos adjunto con el estado actual de su inscripcion a finales";
        var parametros={
                    file:'ReporteSIF',
                    cod:2000,        
                    datos:datos,
                    }
        $.ajax({
              type: 'POST',
              url: 'enviar.email',
              data: parametros,
              success: function(response){
                    if(response.substring(0,5)=='ERROR'){
                        Notifier.warning(response.substring(6));
                    }else{
                        Notifier.success("Email enviado con exito.");
                    }
              },
              error: function(response){
                    Notifier.error(response);	
              }
            });
    }
}

function validar_email(valor){
        // creamos nuestra regla con expresiones regulares.
        var filter = /[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
        // utilizamos test para comprobar si el parametro valor cumple la regla
        if(filter.test(valor))
            return true;
        else
            return false;
}

$( document ).ready(function() {
    if ($('#tablaGrilla >tbody >tr').length < 2){
        $('.my-link').hide();
    }else{
        $('.my-link').show();
    }
});