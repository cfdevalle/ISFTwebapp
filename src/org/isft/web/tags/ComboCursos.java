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
import org.isft.domain.Curso;
import org.isft.logic.collection.CollectionCurso;

/**
 *
 * @author Ariel y carolina
 */
public class ComboCursos extends TagCombo{

    String carrera;
    boolean carga;

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public void setCarga(boolean carga) {
        this.carga = carga;
    }
    
    
    @Override
    public int doStartTag() throws JspException {
       //dependiendo del valor de carga se va a mostrar un boton o no
        if (carga==true){
            //verificaciones de las variables
        System.out.println("entro en combocurso");
        System.out.println("carrera: "+carrera);
                       // se instancia collection curso
                        CollectionCurso cc= new CollectionCurso();
                        //se crea parametro con colectionCurso
                        HashMap hm = new HashMap();
                        hm.put("carrera", carrera);
                        //se instancia un vector vacio
                        Vector vec = null;
                        //se crea primera parte del combo
                        String mensaje="<SELECT NAME=\"curso\" id=\"curso\" SIZE=1 onchange=\"curso();\">";
                        mensaje=mensaje+"<option value \"0\">Seleccionar</option>";
         
                        try {
                            //se realiza consulta 
            vec = cc.select(hm);
        } catch (Exception ex) {
            Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
        }               //se cargan los valores al combo
                        for (int i=0;i<vec.size();i++){
                            //se saca el curso del vector
                            Curso curso=(Curso)vec.get(i);
                            System.out.println(curso.getDescripcion());
                            // se muestra una opcion del combo
                       mensaje=mensaje+"<OPTION VALUE='"+curso.getCod_curso()+"'>"+curso.getDescripcion()+"</OPTION>";
                        }
            try {
                // se imprime en pantalla el valor de mensaje
                pageContext.getOut().print(mensaje);
            } catch (IOException ex) {
                Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
            }
                        System.out.println(mensaje);
                        
        return EVAL_PAGE;
       }
        //esta es la opcion sin carga
       else{
       System.out.println("entro en combocurso sin carga");
        System.out.println("carrera: "+carrera);
        //se instancia collecction materias
                        CollectionCurso cc= new CollectionCurso();
                        //se crea parametro hashmap
                        HashMap hm = new HashMap();
                        hm.put("carrera", carrera);
                        //se instancia vector vacio
                        Vector vec = null;
                        //primera parte del combo
                        String mensaje="<SELECT NAME=\"curso\" id=\"curso\" SIZE=1 onchange=\"horariosincarga();\">";
                        mensaje=mensaje+"<option value \"0\">Seleccionar</option>";
         
                        try {
                            //se realiza la consulta
            vec = cc.select(hm);
        } catch (Exception ex) {
            Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
        }               //se sacan los valores del vector
                        for (int i=0;i<vec.size();i++){
                            Curso curso=(Curso)vec.get(i);
                            System.out.println(curso.getDescripcion());
                            //se muestran datos de cada curso en formato de opcion del combo
                       mensaje=mensaje+"<OPTION VALUE='"+curso.getCod_curso()+"'>"+curso.getDescripcion()+"</OPTION>";
                        }
            try {
                //se imprime en la pagina web el valor de la variable mansaje
                pageContext.getOut().print(mensaje);
            } catch (IOException ex) {
                Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
            }
                        System.out.println(mensaje);
                        
        return EVAL_PAGE;
       }} 
           
    

    @Override
    public int doEndTag() throws JspException {
        try {
            pageContext.getOut().print("</select>");
        } catch (IOException ex) {
            Logger.getLogger(ComboCursos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return EVAL_PAGE;
    }
    
    
}
