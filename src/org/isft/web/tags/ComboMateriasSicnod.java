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
import org.isft.logic.collection.CollectionMaterias;
import org.isft.domain.Materia;

/**
 *
 * @author Ariel
 */
public class ComboMateriasSicnod extends TagSupport {

	String curso;
	String carrera;

	public void setCurso(String curso) {
		this.curso = curso;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	@Override
	public int doStartTag() throws JspException {
		HashMap mat = new HashMap();

		mat.put("campos", "materia.Nombre, materia.Cod_Materia");
		mat.put("curso", curso);
		mat.put("carrera", carrera);
		System.out.println(curso + " " + carrera);

		Vector vector = null;


		CollectionMaterias cm = new CollectionMaterias();
		try {
			vector = cm.select(mat);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		try {
			pageContext.getOut().println("<SELECT NAME=\"materia\" id=\"materia\"  class=\"text\" style=\"width: auto\" onChange='return cargaTurnos();'> ");
			pageContext.getOut().println("<option value='0'>Seleccionar</option>") ;
		} catch (IOException ex) {
			Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
		}
		System.out.println("vector: " + vector.size());
		for (int i = 0; i < vector.size(); i++) {
			Materia materia = (Materia) vector.get(i);
			System.out.println("cod_materia" + materia.getCod_materia());
			try {
				pageContext.getOut().println("<OPTION VALUE='" + materia.getCod_materia() + "'>" + materia.getNombre() + "</OPTION>");
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
