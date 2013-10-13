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
                Notifier.success("Desinscripcion realizada con exito.");
                setTimeout(function(){goPage(2002)},1000);
	  },
	  error: function(response){
	  	alert(response.statusText);	
	  }
	});
}
