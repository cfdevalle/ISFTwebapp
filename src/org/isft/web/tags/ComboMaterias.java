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
    //se crea parametro hashMap
                HashMap mat= new HashMap();
                mat.put("campos","materia.nombre, materia.cod_materia" );
                mat.put("curso",curso);
                mat.put("carrera",carrera);
                System.out.println(curso+" "+carrera);
                //se instancia vector vacio
                Vector vector=null;
                
                //se instancia collectionMaterias
               CollectionMaterias cm = new CollectionMaterias();
               try{ 
                   //se realiza la consulta
                   vector=cm.select(mat);
                              }catch(Exception e){
                              System.out.println(e.getMessage());
                }
        try {
            //se muestra la cabecera del combo
            pageContext.getOut().println("<SELECT NAME=\"materia\" id=\"materia\"  class=\"text\" style=\"width: auto\"> ");
        } catch (IOException ex) {
            Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
        }
               System.out.println("vector 1"+vector.get(0));
               System.out.println("vector 2"+vector.get(1));
               
               //se sacan los datos del vector
               for (int i=0;i<vector.size();i=i+2){
                String materia=(String)vector.get(i);
                String cod_materia=(String)vector.get(i+1);
                System.out.println("cod_materia"+cod_materia);
            try {
                //se muestran los datos como una opcion
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
