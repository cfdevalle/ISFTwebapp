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
public class ComboTurno extends TagSupport {

	String materia;
	String carrera;

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	@Override
	public int doStartTag() throws JspException {
		HashMap hash = new HashMap();

		hash.put("campos","examenes.Turno" );
		hash.put("materia", materia);
		hash.put("carrera", carrera);
		System.out.println(materia + " " + carrera);

		Vector vector = null;


		CollectionExamenes examenes = new CollectionExamenes();
		try {
			vector = examenes.selectTurno(hash);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		try {
			pageContext.getOut().println("<SELECT NAME=\"turno\" id=\"turno\"  class=\"text\" style=\"width: auto\" onChange='return cargaLectivo();'> ");
			pageContext.getOut().println("<option value='0'>Seleccionar</option>") ;
		} catch (IOException ex) {
			Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
		}

		for (int i = 0; i < vector.size(); i++) {
			String turno = (String) vector.get(i);
			System.out.println("turno" + turno);
			try {
				pageContext.getOut().println("<OPTION VALUE='" + turno + "'>" + turno + "</OPTION>");
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
