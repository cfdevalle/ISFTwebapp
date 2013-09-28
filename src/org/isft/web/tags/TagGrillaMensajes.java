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
import org.isft.logic.collection.CollectionMaterias;
import org.isft.domain.Materia;

/**
 *
 * @author Tsuryu
 */
/*
public class TagGrillaMensaje extends TagGrilla {
    String carrera, curso;

    public void setCarrera(String carrera){
        this.carrera = carrera;
    }

    public void setCurso(String curso){
        this.curso = curso;
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
                System.out.println(getCarrera()+' '+getCurso());
                hm.put("carrera", getCarrera());
                hm.put("curso", getCurso());
                hm.put("campos", "*");

                CollectionMaterias cm=new CollectionMaterias();
                Vector materias=cm.select(hm);
                System.out.println(materias);
                
                for(int i=0;i<materias.size();i++){
                    Materia m = (Materia)materias.get(i);
                    tabla+="<tr><td>"+m.getCod_materia()+"</td>";
                    tabla+="<td>"+m.getNombre()+"</td>";
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
    public String getCurso(){
        return this.curso;
    }

    public String getCarrera(){
        return this.carrera;
    }
}
*/