/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags.sif;

import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.FinalInscripto;
import org.isft.logic.collection.CollectionFinalesInscriptos;
import org.isft.web.tags.TagGrilla;

/**
 *
 * @author Tsuryu
 */
public class TagFinalesInscriptos extends TagGrilla {
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {                
                HashMap hm=new HashMap();
                CollectionFinalesInscriptos cfi=new CollectionFinalesInscriptos();
                hm.put("alumno", pageContext.getSession().getAttribute("alumno"));
                Vector<FinalInscripto> fi=cfi.select(hm);
                String tabla="";
                tabla="<tr><td><h4>Materia</h4></td>";
                tabla+="<td><h4>Fecha</h4></td>";
                tabla+="<td><h4>Turno</h4></td>";
                tabla+="<td><h4>Desinscribirse</h4></td></tr>"; 
                int cantidad_checkbox=0;
                for(int i=0;i<fi.size();i++){
                    tabla+="<tr><td>"+fi.elementAt(i).getMateria().getNombre()+"</td>";
                    tabla+="<td>"+fi.elementAt(i).getFecha_examen()+"</td>";
                    tabla+="<td>"+fi.elementAt(i).getTurno()+"</td>";
                    //tabla+="<td>"+fi.elementAt(i).getProfesor()+"</td>";
                    String nombre_checkbox;
                    nombre_checkbox=Integer.toString(fi.elementAt(i).getMateria().getCod_materia());
                    nombre_checkbox+="-"+Integer.toString(fi.elementAt(i).getCarrera().getCod_carrera());
                    nombre_checkbox+="-"+Integer.toString(fi.elementAt(i).getAlumno().getLegajo());
                    tabla+="<td><input type=\"checkbox\" id="+"mat"+i+" value="+nombre_checkbox+"></td></tr>";
                    tabla+="<input type=\"hidden\" value=\""+fi.elementAt(i).getMateria().getNombre()+"\" name="+"mat"+i+" />";
                    cantidad_checkbox++;
                }
                tabla+="<input type=\"hidden\" value=\""+cantidad_checkbox+"\" name=\"cantidad_checkbox\" />";
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
