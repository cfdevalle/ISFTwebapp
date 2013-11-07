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
                        $.ajax({
                            url: 'jsp/sicsa/abmc/ajaxMensajes.jsp',
                            data: $('#nuevoMensaje').serialize(),
                            type: "POST",
                            success: function(){ 
                                $('#myModal').modal('hide');
                                goPage(4002);   
                            }
                        });
                    }
                    return false;
                }); 
            });
        </script>
    </head>
    <body>
            <div>
                <div class="span3">
                    <h3>Nuevo mensaje</h3>
                    <form id="nuevoMensaje" action="" method="post">
                        <ul>
                            <li>
                                <label>Titulo</label>
                                <input maxlength="50" type="text" name="titulo" class="titulo">
                            </li>
                            <li>
                                <label>Mensaje</label>
                                <textarea maxlength="150" rows="6" name="mensaje" class="mensaje"></textarea>
                            </li>
                            <input type="submit" class="btn btn-primary" value="Enviar mensaje" name="submit">
                            <input type="hidden" name="accion" value="nuevo" />
                        </ul>
                    </form>
                </div>
            </div>
    </body>
</html>
