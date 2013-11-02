/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.tags;

import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.Equivalencias;
import org.isft.domain.Materia;
import org.isft.logic.collection.CollectionEquivalencias;
import org.isft.logic.collection.CollectionMateria;



/**
 *
 * @author Tsuryu
 */
public class TagGrillaEquivalencias extends TagGrilla {
    String cod_carrera;

   
    public void setCod_carrera(String codigocarrera) {
        this.cod_carrera = codigocarrera;
    }
    @Override
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
               // System.out.println("ENTRO AL TAG GRILLA codigo carrera es "+cod_carrera);
                String tabla;
                tabla="<table class='table table-condensed'><tr><td><h4>Codigo</h4></td>";
                tabla+="<td><h4>Nombre</h4></td>";
                tabla+="<td><h4>Equivalencias</h4></td>";
                tabla+="<td><h4>Altas</h4></td>";
     
                
                
                
                
                HashMap parametros=new HashMap();
                parametros.put("cod_carrera",cod_carrera);
                CollectionMateria coleccion=new CollectionMateria();
                Vector vectorMaterias=coleccion.select(parametros);
                for(int i=0;i<vectorMaterias.size();i++){
                    Materia materia=new Materia();
                    
                    materia=(Materia)vectorMaterias.get(i);
                    tabla+="<tr><td>"+materia.getCod_materia()+"</td>";
                    tabla+="<td>"+materia.getNombre()+"</td>";
                    tabla+="<td><table class='table table-condensed'>";
                                HashMap param=new HashMap();
                                String cod_materia=String.valueOf( materia.getCod_materia());
                                param.put("cod_carrera",cod_carrera);
                                param.put("cod_materia",cod_materia);
                                CollectionEquivalencias equil= new CollectionEquivalencias();
                                Vector vectorEquivalencias=equil.select(param);
                                for(int j=0;j<vectorEquivalencias.size();j++){
                                Equivalencias equivalencia=new Equivalencias();
                                equivalencia=(Equivalencias)vectorEquivalencias.get(j);
                                tabla+="<tr class='success'><td style='width:200px'>"+equivalencia.getNombre_materia()+"-"+equivalencia.getCod_materia_d()+"-"+equivalencia.getCod_carrera_d()+"</td>";
                               // tabla+="<tag:TagGrillaEquivalenciasAceptadas cod_materia=\""+equivalencia.getCod_materia_d()+"\"cod_carrera=\""+equivalencia.getCod_carrera_d()+"\"/>";
                                tabla+="<td><INPUT type=\"button\" value='Borrar' class='btn-primary'  onClick=\"borrar("+equivalencia.getCod_materia_d()+","+equivalencia.getCod_carrera_d()+","+equivalencia.getCod_materia_o()+","+equivalencia.getCod_carrera_o()+");\"></td>";
                                
                                }
                    tabla+="</table></td>";
                    tabla+="<td><INPUT type=\"button\" value='ingresar' class='btn-primary'   onClick=\"ingresar("+materia.getCod_materia()+");\"></td>";
              
                }
                
                pageContext.getOut().print(tabla);
                } catch(Exception exc){
                    exc.printStackTrace();
                    throw new JspException(exc.getMessage());
                }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspException {
        super.doEndTag();
        return EVAL_PAGE;
    }
}