/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.FechaFinal;
import org.isft.domain.Materia;
import org.isft.domain.Nota_examen;
import org.isft.logic.collection.CollectionNotasFinales;

/**
 *
 * @author Fabian
 */
public class TagGrillaConsultaAcademica extends TagGrilla{
    private int legajo, carrera;
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                HashMap hm=new HashMap();
                //System.out.println(getCarrera()+' '+getCurso());
                //hm.put("carrera", getCarrera());
                hm.put("carrera", getCarrera());
                hm.put("legajo", getLegajo());

                CollectionNotasFinales cm=new CollectionNotasFinales();
                Vector finales=cm.select(hm);
                //System.out.println(finales);
                String tabla = "";
                if(finales.size()>0){
                    tabla += "<thead>";
                    tabla += "<tr><th>Codigo</th>";
                    tabla += "<th>Nombre</th>";
                    tabla += "<th>Modalidad</th>";
                    tabla += "<th>Folio</th>";
                    tabla += "<th>Libro</th>";
                    tabla += "<th>Fecha final</th>";
                    tabla += "<th>Nota</th></tr>";
                    tabla += "</thead>";
                    String clase;
                    for(int i=0;i<finales.size();i++){
                        Nota_examen m = (Nota_examen)finales.get(i);
                        if(m.getNota_final() >= 4){
                            clase="success";
                        }else{
                            clase = "error";
                        }

                        Materia mat = m.getMateria();
                        tabla+="<tr class="+clase+"><td>"+mat.getCod_materia()+"</td>";
                        tabla+="<td>"+mat.getNombre()+"</td>";
                        tabla+="<td>"+m.getModalidadInscripcion()+"</td>";
                        tabla+="<td>"+m.getFolioActExamen()+"</td>";
                        tabla+="<td>"+m.getLibroActExamen()+"</td>";
                        
                        
                        FechaFinal f = m.getFecha_examen();
                        
                        SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
                        String fecha=formatter.format(f.getFecha());
                        tabla+="<td>"+fecha+"</td>";
                        tabla+="<td>"+m.getNota_final()+"</td>";
                    }
                }else{
                    tabla += "<h3>No hay finales rendidos de esta carrera</h3>";
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
     * @return the curso
     */
    public int getCarrera() {
        return carrera;
    }

    /**
     * @param curso the curso to set
     */
    public void setCarrera(int carrera) {
        this.carrera = carrera;
    }
}
