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
public class ComboCarreraEquivalencia extends TagCombo{
private String cod_carrera="";
    
    public int doStartTag() throws JspException {
        // System.out.println("entro al tag CARRERA CODIG CARRERA ES  "+ cod_carrera);
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
        
        mensaje="<SELECT NAME=\"carrera\" id=\"carreraE\" SIZE=1 onchange=\" cargaE();\">";
        mensaje=mensaje+"<option value='0'>Seleccionar<option>" ;           
        for (int i = 0;i<car.size();i++){
                         Carrera carrera=(Carrera)car.get(i);
                          Integer aux=carrera.getCod_carrera();
                          String codCar= aux.toString();
                         if (!cod_carrera.equals(codCar)){
                         
             mensaje=mensaje+"<OPTION VALUE='"+carrera.getCod_carrera()+"'>"+carrera.getCod_carrera()+"-"+carrera.getNombre()+"</OPTION>";
                         } }
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

    



    /**
     * @param cod_carrera the cod_carrera to set
     */
    public void setCod_carrera(String cod_carrera) {
        this.cod_carrera = cod_carrera;
    }
    
}
