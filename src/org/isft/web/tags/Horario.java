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
import static javax.servlet.jsp.tagext.Tag.SKIP_PAGE;
import javax.servlet.jsp.tagext.TagSupport;
import org.isft.domain.Materia;
import org.isft.logic.collection.CollectionHorario;

/**
 *
 * @author Pablo
 */
public class Horario extends TagSupport{
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
    //se crea parametro HashMap
    HashMap hm = new HashMap();
    System.out.println("entre en el taghorario");
    hm.put("curso", curso);
    hm.put("carrera", carrera);
    hm.put("hora",hora);
    hm.put("dia",dia);
        System.out.println("curso"+curso+"carrera"+carrera+"hora"+hora+"dia"+dia);
    //se pone mensaje en vacio
        String mensaje="";
        //instancio collectionHorario
    CollectionHorario ch = new CollectionHorario();
    //se recuperan las materias
    Vector mat=ch.getMateriahora(hm);
    System.out.println("cantidad en agregar horario:"+mat.size());
//si hay datos los muestro
    if (mat.size()>0){
            System.out.println("es mayor a cero:"+mat.get(0));
            //muestro los datos de materia y profesor
        mensaje="<td style=\"background-color: #dff0d8; width: 75; height: 75; \" ><br/><center><p class=\"text-success\">"+(String)mat.get(0) +"<br/>"+(String)mat.get(2) +" "+(String)mat.get(1) +"</p></center></td>";
    }
    else 
        //pongo la celda en color rojo
        mensaje="<td style=\"background-color: #f2dede; width: 75; height: 75; \" >";
        
try {    
            pageContext.getOut().println(mensaje);
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
    return SKIP_PAGE;
    
    }

}
