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
    String mensaje, alumno;

    public void setMensaje(String mensaje){
        this.mensaje = mensaje;
    }

    public void setAlumno(String alumno){
        this.alumno = alumno;
    }
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                String tabla;
                tabla = "<thead>";
                tabla += "<tr><th>Codigo</th>";
                tabla += "<th>Nombre</th></tr>";
                tabla += "</thead>";
                HashMap hm=new HashMap();
                System.out.println(getMensaje()+' '+getAlumno());
                hm.put("mensaje", getMensaje());
                hm.put("alumno", getAlumno());
                hm.put("campos", "*");

                CollectionMensajes cm=new CollectionMensajes();
                Vector mensajes=cm.select(hm);
                System.out.println(mensajes);
                
                for(int i=0;i<mensajes.size();i++){
                    Mensaje m = (Mensaje)mensajes.get(i);
                    tabla+="<tr><td>"+m.getId_mensaje()+"</td>";
                    tabla+="<td>"+m.getTitulo()+"</td>";
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
    public String getAlumno(){
        return this.alumno;
    }

    public String getMensaje(){
        return this.mensaje;
    }
}
