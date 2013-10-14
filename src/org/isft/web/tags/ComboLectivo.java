/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.io.IOException;
import java.util.HashMap;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import org.isft.logic.collection.CollectionExamenes;

/**
 *
 * @author Ariel
 */
public class ComboLectivo extends TagSupport {

	String materia;
	String carrera;
	String turno;

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}

	@Override
	public int doStartTag() throws JspException {
		HashMap hash = new HashMap();

		//hash.put("campos","examenes.Turno" );
		hash.put("materia", materia);
		hash.put("carrera", carrera);
		hash.put("turno", turno);
		System.out.println(materia + " : " + carrera + " : " + turno);

		Vector vector = null;


		CollectionExamenes examenes = new CollectionExamenes();
		try {
			vector = examenes.selectLectivo(hash);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		try {
			pageContext.getOut().println("<SELECT NAME=\"lectivo\" id=\"lectivo\"  class=\"text\" style=\"width: auto\" onChange='return cargaFechaExamen();'> ");
			pageContext.getOut().println("<option value='0'>Seleccionar</option>") ;
		} catch (IOException ex) {
			Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
		}

		for (int i = 0; i < vector.size(); i++) {
			String anioLectivo = (String) vector.get(i);
			System.out.println("anioLectivo: " + anioLectivo);
			try {
				pageContext.getOut().println("<OPTION VALUE='" + anioLectivo + "'>" + anioLectivo + "</OPTION>");
			} catch (IOException ex) {
				Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
			}
		}

		return EVAL_PAGE;
	}

	@Override
	public int doEndTag() throws JspException {
		try {
			pageContext.getOut().println("</select>");
		} catch (IOException ex) {
			Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
		}
		return EVAL_PAGE;
	}
}
