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
import org.isft.domain.Nota_examen;
import org.isft.logic.collection.CollectionNotasFinales;

/**
 *
 * @author Fabian
 */
public class TagGrillaConsultaAcademica extends TagGrilla{
    private int legajo;
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                String tabla = "<thead>";
                tabla += "<tr><th>Codigo</th>";
                tabla += "<th>Nombre</th>";
                tabla += "<th>Modalidad</th>";
                tabla += "<th>Folio</th>";
                tabla += "<th>Libro</th>";
                tabla += "<th>Fecha final</th>";
                tabla += "<th>Nota</th></tr>";
                tabla += "</thead>";
                HashMap hm=new HashMap();
                //System.out.println(getCarrera()+' '+getCurso());
                //hm.put("carrera", getCarrera());
                //hm.put("curso", getCurso());
                hm.put("campos", "*");

                System.out.println("HM: " + hm.toString());
                CollectionNotasFinales cm=new CollectionNotasFinales();
                Vector finales=cm.select(hm);
                System.out.println(finales);
                
                
                for(int i=0;i<finales.size();i++){
                    Nota_examen m = (Nota_examen)finales.get(i);
                    tabla+="<tr><td></td>";
                    tabla+="<td></td>";
                    tabla+="<td>"+m.getModalidadInscripcion()+"</td>";
                    tabla+="<td>"+m.getFolioActExamen()+"</td>";
                    tabla+="<td>"+m.getLibroActExamen()+"</td>";
                    tabla+="<td>"+m.getFecha_examen()+"</td>";
                    tabla+="<td>"+m.getNota_final()+"</td>";
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
}
