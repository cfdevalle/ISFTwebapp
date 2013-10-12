function inscribir(){
    var cantidad_materias= $('input[name=cantidad_materias]').val();
    var i=0;
    var seleccionadoA="";
    var seleccionadoB="";
    while(i<cantidad_materias){
        if($('#select'+i+' :selected').val()==i){
            
        }else{
           var accion=$('#select'+i+' :selected').val();
           //SE TOMAN LOS VALORES PARA ALTA 
           if(seleccionadoA!=""){
               seleccionadoA+="@";
           }
           if(accion=="A"){
                seleccionadoA+= $('input[name=mat'+i+']').val();
                var fecha_turno=$('#select'+i+' :selected').text().split('(');
                var turno=fecha_turno[1];
                var fecha_selecionada=fecha_turno[0];
                var ion="-";
                fecha_selecionada=fecha_selecionada.replace(ion,'');
                fecha_selecionada=fecha_selecionada.replace(ion,'');
                seleccionadoA+=fecha_selecionada;
                seleccionadoA+="-";
                var parentesis=")";
                turno=turno.replace(parentesis,'');
                seleccionadoA+=turno;
            }
            // SE TOMAN LOS VALORES PARA MODIFICACION
            if(seleccionadoB!=""){
               seleccionadoB+="@";
            }
            if(accion=="U"){
                seleccionadoB+= $('input[name=mat'+i+']').val();
                var fecha_turno=$('#select'+i+' :selected').text().split('(');
                var turno=fecha_turno[1];
                var fecha_selecionada=fecha_turno[0];
                var ion="-";
                fecha_selecionada=fecha_selecionada.replace(ion,'');
                fecha_selecionada=fecha_selecionada.replace(ion,'');
                seleccionadoB+=fecha_selecionada;
                seleccionadoB+="-";
                var parentesis=")";
                turno=turno.replace(parentesis,'');
                seleccionadoB+=turno;  
            }
        }
        // ACA TERMINA LA PREGUNTA POR SI SE TOMO COMO SELECCION 0 QUE NO SERIA NADA
        i++;        
    }
    // SE MANDA EL STRING CON ALTAS
    if(seleccionadoA!=""){
        var parametros={
		param:seleccionadoA,
		accion:'A'
	}
        $.ajax({
	  type: 'POST',
	  url: 'inscribir.sif',
	  data: parametros,
	  success: function(response){
                //alert('Inscripcion realizada con exito.');
	  	Notifier.success("Alta realizada con exito.");
	  },
	  error: function(response){
	  	Notifier.warning(response.statusText);	
	  }
	});
       //$("#datos").load("incribir.sif?param="+seleccionadoA+"&accion=A");
    }
    // SE MANDA EL STRING CON UPDATE
    if(seleccionadoB!=""){
       var parametros={
		param:seleccionadoB,
		accion:'U'
	} 
        $.ajax({
	  type: 'POST',
	  url: 'inscribir.sif',
	  data: parametros,
	  success: function(response){
                //alert('Modificacion realizada con exito.');

	  	Notifier.success("Modificacion realizada con exito.");
	  },
	  error: function(response){
	  	alert(response.statusText);	
	  }
	});
       //$("#datos").load("incribir.sif?param="+seleccionadoB+"&accion=U");
    }
    // SI EJECUTO ALGUNA ACCION SE ENVIA A CONSULTAR INSCRIPCION
    if(seleccionadoA!=""||seleccionadoB!=""){
      setTimeout(function(){goPage(2002)},1500);  
    }
}