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
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import org.isft.domain.Profesor;
import org.isft.logic.collection.CollectionMaterias;
import org.isft.logic.collection.CollectionProfesores;

/**
 *
 * @author Pablo
 */
public class ComboProfesores extends TagCombo{

    @Override
    public int doStartTag() throws JspException {
    System.out.println("entre en carga horario");
    //se crea un hashMap           
    HashMap p= new HashMap();
                p.put("campos", "*");
                p.put("tablas", "profesor");
                //instancio el vector
                Vector vector=null;
                
//instancio collectionProfesores que devuelve un vector de profesores
               CollectionProfesores pr = new CollectionProfesores();
               try{ 
                   //se realiza la consulta
                   vector=pr.select(p);
                              }catch(Exception e){
                              System.out.println(e.getMessage());
                }
        try {
            //cabecera del combo
            pageContext.getOut().println("<SELECT NAME=\"profesor\" id=\"profesor\"  class=\"text\" style=\"width: auto\"> ");
        } catch (IOException ex) {
            Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
        }
        //se sacan Profesores del vector
               for (int i=0;i<vector.size();i++){
                   Profesor profe=(Profesor) vector.get(i);
                   
                try {
                    //se muestran los profesores 
                pageContext.getOut().println("<OPTION VALUE='"+profe.getLegajoProfesor()+"'>"+profe.getNombre()+" "+profe.getApellido()+"</OPTION>");
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
    
    

