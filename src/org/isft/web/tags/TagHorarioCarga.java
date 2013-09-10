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
import org.isft.logic.collection.CollectionHorario;

/**
 *
 * @author Ariel
 */
public class TagHorarioCarga extends TagSupport{
String carrera;
String curso;
String hora;
String dia;

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    @Override
    public int doStartTag() throws JspException {
    HashMap hm = new HashMap();
        System.out.println("entre en el taghorario");
    hm.put("curso", curso);
    hm.put("carrera", carrera);
    hm.put("hora",hora);
    hm.put("dia",dia);
        System.out.println("curso"+curso+"carrera"+carrera+"hora"+hora+"dia"+dia);
    String mensaje="<a role=\"button\" class=\"btn\" data-toggle=\"modal\" onclick=\"celda("+dia+","+hora+","+curso+","+carrera+");\">Agregar</a>";
    CollectionHorario ch = new CollectionHorario();
    Vector mat=ch.getMateriahora(hm);
    System.out.println("cantidad en agregar horario:"+mat.size());
    if (mat.size()>0){
            System.out.println("es mayor a cero:"+mat.get(0));
        mensaje="<p>"+(String)mat.get(0) +"<br/>"+(String)mat.get(2) +" "+(String)mat.get(1) +"</p>";
    }
    else
        mensaje="<a href=\"#myModal\" role=\"button\" data-toggle=\"modal\" class=\"btn\" onmouseover=\"celda('"+dia+"', '"+hora+"', '"+curso+"', '"+carrera+"');\">Agregar</a>";
try {    
            pageContext.getOut().println(mensaje);
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
    return SKIP_PAGE;
    
    }
    
}
