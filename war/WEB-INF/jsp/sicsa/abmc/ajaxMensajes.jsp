<%@page import="org.isft.domain.Alumnos" %>
<%@page import="org.isft.domain.Carrera" %>
<%@page import="org.isft.logic.updater.AbmMensaje" %>
<%@page import="java.util.Vector" %>
<%@page import="java.util.HashMap" %>
<%
    AbmMensaje abm = new AbmMensaje();
    System.out.println(request.getParameter("accion"));
if(request.getParameter("accion").equalsIgnoreCase("nuevo")){
        Alumnos alumno = (Alumnos) request.getSession(false).getAttribute("alumno");
        int legajo = alumno.getLegajo();
        
        Vector carreras; 
        carreras = alumno.getCarreras();
        Carrera c = (Carrera)carreras.get(0);
        int cod = c.getCod_carrera();
        HashMap parameters = new HashMap();
        parameters.put("carrera", cod);
        parameters.put("legajo", legajo);
        parameters.put("mensaje", request.getParameter("mensaje"));
        parameters.put("titulo", request.getParameter("titulo"));
        
        System.out.println("nuevo");
          
        abm.insert(parameters);
}    

//AJAX PARA ELIMINAR MENSAJE Y RESPECTIVAS RESPUESTAS
if(request.getParameter("accion").equalsIgnoreCase("eliminar")){
    int id_mensaje = Integer.parseInt(request.getParameter("id_mensaje"));
    HashMap hm = new HashMap();
    hm.put("id_mensaje", id_mensaje);
    abm.delete(hm);
}

//AJAX PARA INSERTAR NUEVA RESPUESTA

if(request.getParameter("accion").equalsIgnoreCase("responder")){
    HashMap hm = new HashMap();
    hm.put("respuesta", request.getParameter("txtRespuesta"));
    hm.put("id_mensaje", Integer.parseInt(request.getParameter("id_mensaje")));
    hm.put("respondido", Integer.parseInt(request.getParameter("respondido")));
    
    abm.insertRespuesta(hm);
} 
%>
