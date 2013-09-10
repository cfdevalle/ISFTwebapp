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
import org.isft.domain.Curso;
import org.isft.logic.collection.CollectionCurso;

/**
 *
 * @author Ariel y carolina
 */
public class ComboCursos extends TagCombo{

    String carrera;

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }
    
    @Override
    public int doStartTag() throws JspException {
        System.out.println("entro en combocurso");
        System.out.println("carrera: "+carrera);
        
                        CollectionCurso cc= new CollectionCurso();
                        HashMap hm = new HashMap();
                        hm.put("carrera", carrera);
                        Vector vec = null;
                        String mensaje="<SELECT NAME=\"curso\" id=\"curso\" SIZE=1 onchange=\"curso();\">";
                        mensaje=mensaje+"<option value \"0\">Seleccionar</option>";
         
                        try {
            vec = cc.select(hm);
        } catch (Exception ex) {
            Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
        }               for (int i=0;i<vec.size();i++){
                            Curso curso=(Curso)vec.get(i);
                            System.out.println(curso.getDescripcion());
                       mensaje=mensaje+"<OPTION VALUE='"+curso.getCod_curso()+"'>"+curso.getDescripcion()+"</OPTION>";
                        }
            try {
                pageContext.getOut().print(mensaje);
            } catch (IOException ex) {
                Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
            }
                        System.out.println(mensaje);
                        
        return EVAL_PAGE;
    
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            pageContext.getOut().print("</select>");
        } catch (IOException ex) {
            Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return EVAL_PAGE;
    }
    
    
}
