/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.io.IOException;
import java.util.HashMap;
import java.util.Vector;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import org.isft.domain.Carrera;
import org.isft.logic.collection.CollectionCarrera;


/**
 *
 * @author Ariel
 */
public class ComboCarrera extends TagCombo{

    @Override
    
    public int doStartTag() throws JspException {
         System.out.println("entro al tag ");
         HashMap hm = new HashMap();
                    hm.put("campos", "*");
                    hm.put("tablas", "carrera");
                    CollectionCarrera carreras = new CollectionCarrera();
          
                    Vector car = null;
                    String mensaje="";
                    try {
            car = carreras.select(hm);
        } catch (Exception ex) {
            Logger.getLogger(ComboCarrera.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        mensaje="<SELECT NAME=\"carrera\" id=\"carrera\" SIZE=1 onchange=\" carga();\">";
        mensaje=mensaje+"<option value='0'>Seleccionar<option>" ;           
        for (int i = 0;i<car.size();i++){
                         Carrera carrera=(Carrera)car.get(i);
                         
             mensaje=mensaje+"<OPTION VALUE='"+carrera.getCod_carrera()+"'>"+carrera.getCod_carrera()+ "-" +carrera.getNombre()+"</OPTION>";
                               }
        try {
            pageContext.getOut().print(mensaje);
        } catch (IOException ex) {
            Logger.getLogger(ComboCarrera.class.getName()).log(Level.SEVERE, null, ex.getMessage());
        }
        return EVAL_PAGE;
                   
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            pageContext.getOut().print("<br/></select>");
        } catch (IOException ex) {
            Logger.getLogger(ComboCarrera.class.getName()).log(Level.SEVERE, null, ex);
        }
        return EVAL_PAGE;
        
    }

}
   