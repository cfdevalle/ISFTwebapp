
function mostrar(aMostrar){
    var cant= $('input[name=cantidad_materias]').val()+1;
    var i=1;
    var boton=1;
    if( $("#div_"+aMostrar).is(':visible')){
        $("#div_"+aMostrar).hide();
    }else{
        while(i<cant){
            $("#div_"+boton).hide();
            boton=boton+2;
            i++;
        }
        $("#div_"+aMostrar).show();
    }
}

$(document).ready(function(){
      mostrar(0);
});


