package org.isft.web.tags.sim;

import org.isft.web.tags.*;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.logic.helper.sim.CollectionMateriasParaGrillas;
import org.isft.logic.helper.sim.DatosGrilla;

import org.isft.domain.helper.FechaHora; //BORRARLO CUANDO SETEEN EL LECTIVO EN SESION.

/**
 * @author TEAM SIM
 */

public class TagGrillaEliminarInscripcion extends TagGrilla {
    private Alumnos usuario;

    public int doStartTag() throws JspException {
        try {
            super.doStartTag();
            
            CollectionMateriasParaGrillas collection=new CollectionMateriasParaGrillas();
            HashMap param=new HashMap();
            param.put("usuario", this.getUsuario());
            param.put("accion", "eliminar");
            
            FechaHora fecha=new FechaHora(); //BORRARLO CUANDO SETEEN EL LECTIVO EN SESION.
            param.put("anio_actual", String.valueOf(fecha.getAnioActual())); //BORRARLO CUANDO SETEEN EL LECTIVO EN SESION.
            
            Vector <DatosGrilla> vec=collection.select(param);
            String tabla = "<thead>"
                        +  "<th><div class=\"text-center\">Codigo</div></th>"
                        +  "<th><div class=\"text-center\">Materia</div></th>"
                        +  "<th><div class=\"text-center\">Situacion Academica</div></th>"
                        +  "<th><div class=\"text-center\">Modalidad</div></th>"
                        +  "<th><div class=\"text-center\">Curso y Turno</div></th>"
                        +  "<th><div class=\"text-center\">Seleccion</div></th>"
                        +  "</thead>"
                        +  "<tbody>";
            
            if (vec.isEmpty()) {
                tabla += "<tr class=\"error\">"
                      +  "<td colspan=\"6\" rowspan=\"6\"><img src=\"static/images/sim/eliminar_materias_inscriptas.jpg\" width=\"100%\" height=\"100%\"></td>"
                      +  "</tr>";
                
                tabla += "</tbody>";
                
                tabla += "<tfoot border=\"0\">"
                      +     "<td colspan=\"6\">"
                      +         "<div align=\"right\">"
                      +             "<a href=\"#mainMenu\" data-toggle=\"modal\" class=\"btn\"><i class=\"icon-remove icon-black\"></i> Cancelar</a>"
                      +         "</div>"
                      +     "</td>"
                      +  "</tfoot>";
            } 
            else {
                for (int i = 0; i < vec.size(); i++) {
                    DatosGrilla datos = vec.get(i);
                    tabla += "<tr class=\"success\">"
                          +  "<td><div class=\"text-center\">" + datos.getCodigo() + "</div></td>"
                          +  "<td><div class=\"text-center\">" + datos.getMateria() + "</div></td>"
                          +  "<td><div class=\"text-center\">" + datos.getSituacionAcademica() + "</div></td>"
                          +  "<td><div class=\"text-center\">" + datos.getModalidad() + "</div></td>"
                          +  "<td><div class=\"text-center\">" + datos.getTurno() + "</div></td>"
                          +  "<td><div class=\"text-center\">" + datos.getSeleccion() + "</div></td>"
                          +  "</tr>";
                }
                tabla += "</tbody>";
                
                tabla += "<tfoot border=\"0\">"
                      +     "<td colspan=\"5\">"
                      +         "<div align=\"right\">"
                      +             "<a href=\"#mainMenu\" data-toggle=\"modal\" class=\"btn\"><i class=\"icon-remove icon-black\"></i> Cancelar</a>"
                      +         "</div>"
                      +     "</td>"
                      +     "<td colspan=\"1\">"
                      +         "<div align=\"right\">"
                      +             "<a href=\"#abmSimDelete\" data-toggle=\"modal\" class=\"btn btn-danger\"><i class=\"icon-trash icon-white\"></i> Eliminar</a>"
                      +         "</div>"
                      +     "</td>"
                      +  "</tfoot>";
            }            
            pageContext.getOut().print(tabla);
            
	} catch(Exception exc){
            exc.printStackTrace();
            throw new JspException("Exception en TagGrillaInscripcionMaterias " + exc.getMessage());
        }
        
        return SKIP_BODY;
    }
    
    public int doEndTag() throws JspException {
        try{
            super.doEndTag();
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }
        return EVAL_PAGE;
    }
    
    public Alumnos getUsuario() {
        return usuario;
    }

    public void setUsuario(Alumnos usuario) {
        this.usuario = usuario;
    }
}
