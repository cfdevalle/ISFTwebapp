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

/**
 *
 * @author Ariel
 */
public class ComboMaterias extends TagSupport{
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
    System.out.println("entre en carga horario");
                HashMap mat= new HashMap();
                
                mat.put("campos","materia.nombre, materia.cod_materia" );
                mat.put("curso",curso);
                mat.put("carrera",carrera);
                System.out.println(curso+" "+carrera);
                
                Vector vector=null;
                

               CollectionMaterias cm = new CollectionMaterias();
               try{ vector=cm.select(mat);
                              }catch(Exception e){
                              System.out.println(e.getMessage());
                }
        try {
            pageContext.getOut().println("<SELECT NAME=\"materia\" id=\"materia\"  class=\"text\" style=\"width: auto\"> ");
        } catch (IOException ex) {
            Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
        }
               System.out.println("vector 1"+vector.get(0));
               System.out.println("vector 2"+vector.get(1));
               for (int i=0;i<vector.size();i=i+2){
                String materia=(String)vector.get(i);
                String cod_materia=(String)vector.get(i+1);
                System.out.println("cod_materia"+cod_materia);
            try {
                pageContext.getOut().println("<OPTION VALUE='"+cod_materia+"'>"+materia+"</OPTION>");
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
