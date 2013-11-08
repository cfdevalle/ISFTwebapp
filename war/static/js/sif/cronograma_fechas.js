
function mostrar(aMostrar,anio){
    var cant= $('input[name=cantidad_materias]').val()+1;
    var i=1;
    var boton=2;
    var boton2=2;
    var boton3=2;
    if( $("#div_"+aMostrar+"_"+anio).is(':visible')){
        $("#div_"+aMostrar+"_"+anio).hide();
    }else{
        while(i<cant){
            $("#div_1_"+boton).hide();
            $("#div_2_"+boton2).hide();
            $("#div_3_"+boton3).hide();
            boton=boton+2;
            boton2=boton2+2;
            boton3=boton3+2;
            i++;
        }
        $("#div_"+aMostrar+"_"+anio).show();
    }
}


$( document ).ready(function() {
    var cantidad_materias= $('input[name=cantidad_materias]').val();
    if(cantidad_materias==0){
        cronograma_fechas.innerHTML="<h3 align='center'>No hay fechas cargadas en la base de datos</h3>"
        cronograma_fechas.innerHTML+="<img style='display: block; margin: 0 auto;' src='static/images/sif/error.jpg'>";
        
    }else{
        mostrar(0,0);
    }
});