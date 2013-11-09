<%@page import="org.isft.logic.AccessManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    int id_mensaje = Integer.parseInt(request.getParameter("id_mensaje"));
    ResultSet rs = null;
    AccessManager am = new AccessManager();
    try{
        String query = "select m.*, a.nombre, a.apellido from mensaje m, alumnos a where m.id_mensaje = "+id_mensaje+" and a.Legajo = m.Legajo group by a.Legajo";
        rs = am.execute(query);
    }catch(Exception e){
        System.out.println(e.getMessage());
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#responder').submit(function(){
                    var mensaje = $('.txtRespuesta').val().trim();
                    if(mensaje == ""){
                        alert("Por favor, ingrese un mensaje valido.");
                        return false;
                    }else{
                        $.ajax({
                            url: 'jsp/sicsa/abmc/ajaxMensajes.jsp',
                            data: $('#responder').serialize(),
                            type: "POST",
                            success: function(){ 
                                $('#myModal').modal('hide');
                                goPage(4005);   
                            }
                        });
                    }
                    return false;
                }); 
            });
        </script>
        <title>Nuevo mensaje</title>
    </head>
    <body>
            <div class="row">
                <div class="span4">
                    <%if(rs.next()){%>
                        <h4>Mensaje ID: <%=rs.getInt("id_mensaje")%></h4>
                        <form id="responder" method="post" action=''>
                            <ul>
                                <h4><%=rs.getString("titulo")%></h4>
                                <li class="item mensaje">
                                    <span><strong><%=rs.getString("nombre")+" "+rs.getString("apellido")%></strong> dijo:</span>
                                    <p><%=rs.getString("mensaje")%></p>
                                </li>
                                <%
                                System.out.println(rs.getInt("respondido"));
                                if(rs.getInt("respondido")==1){
                                    ResultSet resp = null;
                                    try{
                                        String qResp = "SELECT respuesta FROM respuesta_mensaje where id_mensaje = "+rs.getInt("id_mensaje")+" ORDER BY fecha_respuesta";
                                        resp = am.execute(qResp);
                                    }catch(Exception e){
                                        System.out.println(e.getMessage());
                                    }
                                    
                                    resp.next();
                                %>
                                    <li class="item respusta">
                                        <span><strong>Administrador</strong> dijo:</span>
                                        <p><%=resp.getString("respuesta")%></p>
                                    </li>
                                <%}else{%>
                                <textarea maxlength="200" class="txtRespuesta" name="txtRespuesta" onfocus="if(this.value=='Respuesta')this.value=''">Respuesta</textarea>
                                <input type="hidden" name="respondido" value="1">
                                <input type="hidden" name="accion" value="responder">
                                <input type="hidden" name="id_mensaje" value="<%=id_mensaje%>">
                                <input type="submit" class="btn btn-primary" value="Responder" name="submit">
                                <%}%>
                            </ul>
                        </form>
                    <%}%>
                </div>
            </div>
    </body>
</html>
