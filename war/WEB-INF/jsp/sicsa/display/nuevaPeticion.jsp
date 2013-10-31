<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#nuevoMensaje').submit(function(){
                    var titulo = $('.titulo').val().trim();
                    var mensaje = $('.mensaje').val().trim();
                    if(titulo==""){
                        alert("Por favor, ingrese un titulo valido.");
                        return false;
                    }
                    if(mensaje == ""){
                        alert("Por favor, ingrese un mensaje valido.");
                        return false;
                    }
                    
                    if(titulo != "" && mensaje != ""){
                        $.post('jsp/sicsa/abmc/ajaxMensajes.jsp', $('#nuevoMensaje').serialize())
                        $('#myModal').modal('hide');
                        goPage(4001);
                    }
                    return false;
                }); 
            });
        </script>
        <title>Nuevao mensaje</title>
    </head>
    <body>
            <div>
                <div class="span3">
                    <h3>Nuevo mensaje</h3>
                    <form id="nuevoMensaje" action="" method="post">
                        <ul>
                            <li>
                                <label>Titulo</label>
                                <input type="text" name="titulo" class="titulo">
                            </li>
                            <li>
                                <label>Mensaje</label>
                                <textarea rows="6" name="mensaje" class="mensaje"></textarea>
                            </li>
                            <input type="submit" class="btn btn-primary" value="Enviar mensaje" name="submit">
                            <input type="hidden" name="accion" value="nuevo" />
                        </ul>
                    </form>
                </div>
            </div>
    </body>
</html>
