/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.logic.collection.CollectionMensajes;
import org.isft.domain.Mensaje;

/**
 *
 * @author Tsuryu
 */

public class TagGrillaMensajes extends TagGrilla {
    private int legajo;
    private int carrera;
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                String tabla;
                tabla = "<thead>";
                tabla += "<tr><th>Codigo</th>";
                tabla += "<th>Estado</th>";
                tabla += "<th>Fecha</th>";
                tabla += "<th>Titulo</th>";
                tabla += "<th></th></tr>";
                tabla += "</thead>";
                HashMap hm=new HashMap();
                hm.put("legajo", getLegajo());
                hm.put("carrera", getCarrera());
                hm.put("campos", "*");

                CollectionMensajes cm=new CollectionMensajes();
                Vector mensajes=cm.select(hm);
                System.out.println(mensajes);
                
                for(int i=0;i<mensajes.size();i++){
                    Mensaje m = (Mensaje)mensajes.get(i);
                    String clase = "";
                    String estado = "";
                    if(m.isRespondido()){
                        estado = "Respondido";
                        clase = "success";
                    }else{
                        estado = "Esperando respuesta";
                        clase = "error";
                    }
                    
                    tabla+="<tr class="+clase+"><td>"+m.getId_mensaje()+"</td>";
                    tabla+="<td>"+estado+"</td>";
                    tabla+="<td>"+m.getFecha()+"</td>";
                    tabla+="<td>"+m.getTitulo()+"</td>";
                    tabla+="<td><a href=\"javascript:verPeticion("+m.getId_mensaje()+")\">Ver</a></td></tr>";
                }

                pageContext.getOut().print(tabla);
                } catch(Exception exc){
                    exc.printStackTrace();
                    throw new JspException(exc.getMessage());
                }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspException {
        super.doEndTag();
        return EVAL_PAGE;
    }

    /**
     * @return the legajo
     */
    public int getLegajo() {
        return legajo;
    }

    /**
     * @param legajo the legajo to set
     */
    public void setLegajo(int legajo) {
        this.legajo = legajo;
    }

    /**
     * @return the carrera
     */
    public int getCarrera() {
        return carrera;
    }

    /**
     * @param carrera the carrera to set
     */
    public void setCarrera(int carrera) {
        this.carrera = carrera;
    }
}
