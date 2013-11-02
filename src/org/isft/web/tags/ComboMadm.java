package org.isft.web.tags;

import java.io.IOException;
import java.util.HashMap;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.isft.domain.Materia;
import org.isft.logic.collection.CollectionMateria;

/**
 *
 * @author Ariel
 */
public class ComboMadm extends TagSupport{
String cod_carrera;

   
    public void setCod_carrera(String codigocarrera) {
        this.cod_carrera = codigocarrera;
    }
    @Override
    public int doStartTag() throws JspException {
    
               
              //  System.out.println("ENTRO AL TAG FACU");
                
                HashMap parametros= new HashMap();
                Vector vector=null;
                
                parametros.put("cod_carrera",cod_carrera);

               CollectionMateria cm = new CollectionMateria();
               try{ vector=cm.select(parametros);
                              }catch(Exception e){
                              System.out.println(e.getMessage());
                }
        try {
            pageContext.getOut().println("<SELECT NAME=\"materia\" id=\"materia\"  class=\"text\" style=\"width: auto\"> ");
        } catch (IOException ex) {
            Logger.getLogger(ComboMaterias.class.getName()).log(Level.SEVERE, null, ex);
        }
               
               for (int i=0;i<vector.size();i++){
                 Materia materia=new Materia();  
                 materia=(Materia)vector.get(i);
                  
            try {
                
                pageContext.getOut().println("<OPTION VALUE='"+materia.getCod_materia()+"'>"+materia.getCod_materia()+"-"+materia.getNombre()+"</OPTION>");
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