function inscribir(){
    var cantidad_materias= $('input[name=cantidad_materias]').val();
    var i=0,j=0,k;
    var seleccionadoA="";
    var seleccionadoB="";
    var inscribible;
    while(j<cantidad_materias){
        inscribible=true;
        k=0;
        while(k<cantidad_materias){
            var suma=j+k;
            if($('#select'+j+' :selected').text()==$('#select'+suma+' :selected').text()
                &&$('#select'+j+' :selected').text()!=""
                &&j!=suma){
                inscribible=false;
                j=cantidad_materias;
            }
            k++;
        }
        j++;
    }if(inscribible){}else{Notifier.warning("Hay 2 materias seleccionadas el mismo dia y turno.");};
    while(i<cantidad_materias&&inscribible==true){
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
    if(seleccionadoA!=""||seleccionadoB!=""){
      realizarIncripcion(seleccionadoA,seleccionadoB); 
    }
    if(seleccionadoA==""&&seleccionadoB==""){
      Notifier.warning("No se ha seleccionado ninguna materia");
    }
}

function realizarIncripcion(datosAlta,datosUpdate){
    if(datosAlta!=""){
        var parametros={
		param:datosAlta,
		accion:'A'
	}
        $.ajax({
	  type: 'POST',
	  url: 'inscribir.sif',
	  data: parametros,
	  success: function(response){
                if(response.substring(0,5)=='ERROR'){
                    Notifier.warning(response.substring(6));
                }else{
                    Notifier.success(response);
                    if(datosUpdate!=""){
                        realizarUpdate(datosUpdate);
                    }else{
                        setTimeout(function(){goPage(2002)},1000); 
                    }
                }
	  },
	  error: function(response){
	  	Notifier.error(response);	
	  }
	});
    }else if(datosUpdate!=""){
        realizarUpdate(datosUpdate);
    }
}

function realizarUpdate(datosUpdate){
        var parametros={
		param:datosUpdate,
		accion:'U'
	}
        $.ajax({
	  type: 'POST',
	  url: 'inscribir.sif',
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