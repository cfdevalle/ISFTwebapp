/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;

/**
 *
 * @author Tsuryu
 */
public class TagGrillaFinalesAInscribir extends TagGrilla {
    public int doStartTag() throws JspException {
            super.doStartTag();
            for(int i=0;i<3;i++){
            String table="<tr><td><h4>Materia</h4></td>";
            table+="<td><h4>Fecha</h4></td>";
            table+="<td><h4>Modalidad de Inscripcion</h4></td>";
            table+="<td><h4>Situacion Academica</h4></td></tr>";        
            
            table+="<tr><td>Analisis Matematico 1</td>";
                table+="<td><select>";
                table+="<option></option>";
                table+="<option>Lunes 29/06 (Turno Mañana)</option>";
                table+="<option>Miercoles 31/06 (Turno Mañana)</option>";
                table+="<option>Martes 06/07 (Turno Noche)</option>";
                table+="<option>Viernes 09/07 (Turno Noche)</option>";
                table+="</select></td>";
            table+="<td>Presencial</td>";
            table+="<td>Cohorte</td></tr>";
        
            try {
                pageContext.getOut().print(table);
            } catch(Exception exc){
                exc.printStackTrace();
                throw new JspException(exc.getMessage());
            }
        }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspException {
        super.doEndTag();
        return EVAL_PAGE;
    }
}
