<!DOCTYPE html>
<html>
    <head>
        <?php include("../../includes/metas_inc.jsp"); ?>
        <title>Nueva peticion</title>
    </head>
    <body>
            <div class="row">
                <div class="span4">
                    <h3>Nueva peticion</h3>
                    <form>
                        <ul>
                            <li>
                                <label>Titulo</label>
                                <input type="text" name="titulo">
                            </li>
                            <li>
                                <label>Mensaje</label>
                                <textarea name="mensaje"></textarea>
                            </li>
                            <input type="submit" class="btn btn-primary" value="Enviar peticion" name="submit">
                        </ul>
                    </form>
                </div>
            </div>
    </body>
</html>
