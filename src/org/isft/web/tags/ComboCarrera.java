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
        //se crean parametros con hashMap 
        HashMap hm = new HashMap();
                    hm.put("campos", "*");
                    hm.put("tablas", "carrera");
                    //instancio Collectioncarreras
                    CollectionCarrera carreras = new CollectionCarrera();
          
                    Vector car = null;
                    //pongo el mensaje en vacio
                    String mensaje="";
                    try {
                        //realizo la la consulta
            car = carreras.select(hm);
        } catch (Exception ex) {
            Logger.getLogger(ComboCarrera.class.getName()).log(Level.SEVERE, null, ex);
        }
        //se cra la estructura del combo
        mensaje="<SELECT NAME=\"carrera\" id=\"carrera\" SIZE=1 onchange=\" carga();\">";
        mensaje=mensaje+"<option value='0'>Seleccionar<option>" ;           
        //se carga el combo con los resultados de la consulta
        for (int i = 0;i<car.size();i++){
                    //se saca del vector la carrera
                         Carrera carrera=(Carrera)car.get(i);
                         //se muetran los datos con el formato para formar el combo
             mensaje=mensaje+"<OPTION VALUE='"+carrera.getCod_carrera()+"'>"+carrera.getNombre()+"</OPTION>";
                               }
        try {
            //se imprime en la pagina el valor de mensaje
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
   