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
public class TagFinalesInscriptosFull extends TagGrilla {
	String materia;
	String carrera;
	String turno;
	String lectivo;
	String fechaexamen;

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}
	public void setLectivo(String lectivo) {
		this.lectivo = lectivo;
	}
	public void setFechaexamen(String fechaexamen) {
		this.fechaexamen = fechaexamen;
	}
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                System.out.println("llego al tag de finalesInscriptosFULL");
				
                HashMap hm=new HashMap();
				hm.put("materia", materia);
				hm.put("carrera", carrera);
				hm.put("turno", turno);
				hm.put("lectivo", lectivo);
				hm.put("fechaexamen", fechaexamen);
				System.out.println(materia + " : " + carrera + " : " + turno + " : " + lectivo + " : " + fechaexamen);
				
                CollectionFinalesInscriptos cfi=new CollectionFinalesInscriptos();
                Vector<FinalInscripto> fi=cfi.getFullInscripciones(hm);
                String tabla;
                tabla="<tr><td><h4>#</h4></td>";
                
				tabla+="<td><h4>Legajo</h4></td>"; 
                tabla+="<td><h4>Apellido</h4></td>";
                tabla+="<td><h4>Nombre</h4></td>";
                
				tabla+="<td><h4>Modalidad</h4></td>";
                tabla+="<td><h4>Fecha Inscripcion</h4></td>";

				tabla+="<td><h4>Calificacion</h4></td>";
                tabla+="<td><h4>Libro</h4></td>";
                tabla+="<td><h4>Folio</h4></td></tr>";

				int cantidad_checkbox=0;
                for(int i=0;i<fi.size();i++){
                    tabla+="<tr>";
					
					tabla+="<td>"+(i+1)+"</td>";
					
					tabla+="<td>"+fi.elementAt(i).getAlumno().getLegajo()+"</td>";
					tabla+="<td>"+fi.elementAt(i).getAlumno().getApellido()+"</td>";
					tabla+="<td>"+fi.elementAt(i).getAlumno().getNombre()+"</td>";
					
					tabla+="<td>"+fi.elementAt(i).getNotaexamen().getModalidadInscripcion()+"</td>";
					tabla+="<td>"+fi.elementAt(i).getNotaexamen().getFecha_inscripcion()+"</td>";
					
					tabla+="<td><input maxlength='2' style=\"max-width: 95px\" type=\"text\" value='"+fi.elementAt(i).getNotaexamen().getNota_final()+"' name=\"Calificacion\" /></td>";
					tabla+="<td><input style=\"max-width: 95px\" type=\"text\" value='"+fi.elementAt(i).getNotaexamen().getLibroActExamen()+"' name=\"Libro\" required='true' /></td>";
					tabla+="<td><input style=\"max-width: 95px\" type=\"text\" value='"+fi.elementAt(i).getNotaexamen().getFolioActExamen()+"' name=\"Folio\" required='true' />";
					tabla+="<input type=\"hidden\" value='"+fi.elementAt(i).getAlumno().getLegajo()+"' name=\"Legajo\" /></td>";
					
					tabla+="</tr>";
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
