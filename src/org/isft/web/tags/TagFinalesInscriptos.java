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
import org.isft.logic.collection.CollectionFinalesInscriptos;

/**
 *
 * @author Tsuryu
 */
public class TagFinalesInscriptos extends TagGrilla {
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                String tabla;
                tabla="<tr><td><h4>Materia</h4></td>";
                tabla+="<td><h4>Fecha</h4></td>";
                tabla+="<td><h4>Turno</h4></td>";
                tabla+="<td><h4>Profesor</h4></td>";
                tabla+="<td><h4>Desinscribirse</h4></td></tr>";  
                HashMap hm=new HashMap();
                CollectionFinalesInscriptos cfi=new CollectionFinalesInscriptos();
                Vector<String> finalesInscriptos=cfi.select(hm);
                for(int i=0;i<finalesInscriptos.size();i++){
                    tabla+="<tr><td>"+finalesInscriptos.elementAt(i)+"</td>";
                    tabla+="<td>27 de Noviembre</td>";
                    tabla+="<td>Noche</td>";
                    tabla+="<td>Prof. Mastuntuono</td>";
                    tabla+="<td><input type=\"checkbox\"></td></tr>";  
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
}
