/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags.sif;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.Examenes;
import org.isft.logic.collection.CollectionFechaFinal;
import org.isft.web.tags.TagGrilla;

/**
 *
 * @author Administrador
 */
public class TagFechaFinal extends TagGrilla{

    public int doStartTag() throws JspException {
            try {
                super.doStartTag(); 
                HashMap hm=new HashMap();
                hm.put("alumno", pageContext.getSession().getAttribute("alumno"));// linea magica que hizo que todo funcione
                CollectionFechaFinal cff=new CollectionFechaFinal();
                Vector<Examenes> examenes=cff.select(hm);

                String tabla="";
                int i;
               // tabla+="<tr><td colspan=\"5\"><h5>TURNO MA&NtildeANA</h5></td></tr>";
                for(i=0;i<examenes.size();i=i+2){
                    tabla+=generarMateria(examenes.elementAt(i),examenes.elementAt(i+1),i);
                }
               // tabla+="<tr><td colspan=\"5\"><h5>TURNO NOCHE</h5></td></tr>";
                tabla+="<input type=\"hidden\" value=\""+i+"\" name=\"cantidad_materias\" />";
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
    

    private String generarMateria(Examenes exa1,Examenes exa2,int i) {
        i++;
        String materia="<tr><td>"+
                "<input type=\"button\" onclick=\"mostrar("+i+")\" style=\"width: 300px\" class=\"btn btn-default\"  value=\""+exa1.getMateria().getNombre()+"\">";
      //  <input type="button" onclick="inscribir()" class="btn btn-default" value="Inscribir">
        materia+="</td><td><div id=div_"+i+"><table>";
        materia+=generarTurno(exa1);
        materia+=generarTurno(exa2);
        materia+="</table></div></td></tr>";
        return materia;        
    }
    private String generarTurno(Examenes exa){
        String turno="<tr><td rowspan=\"2\"><h5>"+exa.getTurno()+"</h4>";
        turno+=generarFecha(exa);
        return turno;
    }
    private String generarFecha(Examenes exa){
		/*
		 * Comenté esto por que tiene error de compatibilidad de variables y no se puede compilar
		 */
		/*
        Date dff1 = exa.getFecha1();
        DateFormat ff1 = DateFormat.getDateInstance(DateFormat.FULL);
        String fecha1 = ff1.format(dff1);
        Date dff2 = exa.getFecha2();
        DateFormat ff2 = DateFormat.getDateInstance(DateFormat.FULL);
        String fecha2 = ff2.format(dff2);
        String fecha="</td><td><h6>"+fecha1+"</h5></td></tr>"+
                     "<tr><td><h6>"+fecha2+"</h5></td></tr>";
					 */
		String fecha="";
        return fecha;   
    }
    
 
}
//DateFormat df4 = DateFormat.getDateInstance(DateFormat.FULL);
//String s4 = df4.format(now);

