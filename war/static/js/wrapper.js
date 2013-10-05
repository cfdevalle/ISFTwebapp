function goPage(page){
$("#div_screen").load("encabezado.go?codPage="+page+"#miancla");
}
function goPageNoLogin(page){
$("#div_screen").load("encabezado.login?codPage="+page+"#miancla");
}
$( document ).ready(function() {
    console.log( "ready!" );
    $('.goTop').click(
          function()
          {
                $('html,body').animate({scrollTop:'0px'}, 500);
          }
    );
});

