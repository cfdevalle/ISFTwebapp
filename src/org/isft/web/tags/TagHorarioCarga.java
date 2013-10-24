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
import org.isft.domain.Materia;
import org.isft.logic.collection.CollectionHorario;

/**
 *
 * @author Ariel Pablo Carolina
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
    //se crean parametros hashMap
    HashMap hm = new HashMap();
    hm.put("curso", curso);
    hm.put("carrera", carrera);
    hm.put("hora",hora);
    hm.put("dia",dia);
    
        System.out.println("curso"+curso+"carrera"+carrera+"hora"+hora+"dia"+dia);
    //mensaje se carga con un boton de agregar
        String mensaje="<a role=\"button\"  data-toggle=\"modal\" class='btn' onmouseover=\"celda("+dia+","+hora+","+curso+","+carrera+");\">Agregar</a>";
    CollectionHorario ch = new CollectionHorario();
    //se recuperan las materias
    Vector mat=ch.getMateriahora(hm);
    System.out.println("cantidad en agregar horario:"+mat.size());
   //se muestran los datos encontrados si los hay
    if (mat.size()>0){
            System.out.println("es mayor a cero:"+mat.get(0));
        mensaje="<p class=\"text-success\">"+(String)mat.get(0) +"<br/>"+(String)mat.get(2) +" "+(String)mat.get(1) +"</p><a href=\"#eliminar\" data-toggle=\"modal\" onmouseover=\"eliminar('"+dia+"','"+hora+"','"+carrera+"','"+curso+"','"+mat.get(0)+"');\"><i class=\"icon-remove\" style=\"float: right\" /></a></div>";
    }
    //si no hay datos muestra un boton
    else
        mensaje="<a href=\"#myModal\" role=\"button\" class='btn' data-toggle=\"modal\"  onmouseover=\"celda('"+dia+"', '"+hora+"', '"+curso+"', '"+carrera+"');\"><i class='icon-plus'></i></a>";
try {    
    //imprime en pantalla el valor de mensaje
            pageContext.getOut().println(mensaje);
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }
    return SKIP_PAGE;
    
    }
    
}
