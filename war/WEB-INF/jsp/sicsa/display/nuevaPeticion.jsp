<!DOCTYPE html>
<html>
    <head>
        <?php include("../../includes/metas_inc.jsp"); ?>
        <title>Nuevao mensaje</title>
    </head>
    <body>
            <div>
                <div class="span3">
                    <h3>Nuevo mensaje</h3>
                    <form onsubmit="return false;">
                        <ul>
                            <li>
                                <label>Titulo</label>
                                <input type="text" name="titulo">
                            </li>
                            <li>
                                <label>Mensaje</label>
                                <textarea rows="6" name="mensaje"></textarea>
                            </li>
                            <input type="submit" class="btn btn-primary" value="Enviar mensaje" name="submit">
                        </ul>
                    </form>
                </div>
            </div>
    </body>
</html>
