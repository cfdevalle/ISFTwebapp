function evaluar_ingreso(){
    if(document.getElementById('txt_usuario').value=='' &&  document.getElementById('txt_password').value=='' ){
        Notifier.warning("No se ingreso ningun dato");
        return false;
    }else if(document.getElementById('txt_usuario').value=='' ){
        Notifier.warning("No se ingreso Usuario ");
        return false;
    }else if(document.getElementById('txt_password').value=='' ){
        Notifier.warning("No se ingreso password ");
        return false;
    } else{
        document.getElementById('form_login').submit();
    }
 }
function evaluar_ingreso_div(){
    var mensaje = "";
    var color = "red";
    if(document.getElementById('txt_usuario').value=='' && document.getElementById('txt_password').value==''){
        mensaje = ("No se ingreso ningun dato");
    }else if(document.getElementById('txt_usuario').value==''){
        mensaje = ("No se ingreso Usuario ");
    }else if(document.getElementById('txt_usuario').value.length < 6){
        mensaje = ("El Usuario debe tener al menos 6 caracteres");
        color = "orange";
    }else if(document.getElementById('txt_password').value==''){
        mensaje = ("No se ingreso password ");
    }else if(document.getElementById('txt_password').value.length < 6){
        mensaje = ("El Password debe tener al menos 6 caracteres");
        color = "orange";
    } else{
        document.getElementById('form_login').submit();
    }
    if(mensaje != ""){
        document.getElementById("mensaje").style.display = "block";
        document.getElementById("mensaje").innerHTML = mensaje;
        document.getElementById("mensaje").style.color = color;
        
    }
    return false;
}
function evaluar_ingreso_div_image(){
    var mensaje = "";
    var imagen_user_falta = false;
    var imagen_pass_falta = false;
    var imagen_user_omite = false;
    var imagen_pass_omite = false;
    if(document.getElementById('txt_usuario').value=='' && document.getElementById('txt_password').value==''){
        mensaje = ("No se ingreso ningun dato");
        imagen_user_omite = true;
        imagen_pass_omite = true;
    }else if(document.getElementById('txt_usuario').value==''){
        mensaje = ("No se ingreso Usuario ");
        imagen_user_omite = true;
    }else if(document.getElementById('txt_usuario').value.length < 6){
        mensaje = ("El Usuario debe tener al menos 6 caracteres");
        var imagen_user_falta = true;
    }else if(document.getElementById('txt_password').value==''){
        mensaje = ("No se ingreso password ");
        imagen_pass_omite = true;
    }else if(document.getElementById('txt_password').value.length < 6){
        mensaje = ("El Password debe tener al menos 6 caracteres");
        imagen_pass_falta = true;
    } else{
        document.getElementById('form_login').submit();
    }
    if(mensaje != ""){

        document.getElementById("imagen_pass").style.visibility = "hidden";
        document.getElementById("imagen_user").style.visibility = "hidden";
        document.getElementById("mensaje_pass").style.visibility = "hidden";
        document.getElementById("mensaje_user").style.visibility = "hidden";
        
        if(imagen_user_falta || imagen_user_omite){
            img = "";
            if(imagen_user_falta){
                img = "pendiente.png";
            }else if(imagen_user_omite){
                img = "rechazado.png";
            }
            if(img!=""){
                document.getElementById("imagen_user").style.visibility = "visible";
                document.getElementById("imagen_user").src = "static/images/sicnod/"+img;
            }
            document.getElementById("mensaje_user").style.visibility = "visible";
            document.getElementById("mensaje_user").innerHTML = mensaje;

        }
        if(imagen_pass_falta || imagen_pass_omite){
            img = "";
            if(imagen_pass_falta){
                img = "pendiente.png";
            }else if(imagen_pass_omite){
                img = "rechazado.png";
            }
            if(img!=""){
                document.getElementById("imagen_pass").style.visibility = "visible";
                document.getElementById("imagen_pass").src = "static/images/sicnod/"+img;
            }
            document.getElementById("mensaje_pass").style.visibility = "visible";
            document.getElementById("mensaje_pass").innerHTML = mensaje;
        }
        

    }
    return false;
}
function valida_int(Field){
    success = false;
    
        if($('#'+Field).val() != "" && $.isNumeric($('#'+Field).val())) {
            success = true;
        }else{
            Notifier.warning("El legajo debe ser un numero!");
            success = false;
            
        }
    
    return success;
}

function gotTop(){
	$("html, body").animate({scrollTop: 0}, 1000);
}
