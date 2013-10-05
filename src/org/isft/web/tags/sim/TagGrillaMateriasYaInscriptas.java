package org.isft.web.tags.sim;

import org.isft.web.tags.*;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;
import org.isft.logic.helper.sim.CollectionMateriasYaInscriptas;
import org.isft.logic.helper.sim.DatosGrilla;
import org.isft.domain.helper.FechaHora;

/**
 * @author TEAM SIM
 */

public class TagGrillaMateriasYaInscriptas extends TagGrilla {
    private Alumnos usuario;

    public int doStartTag() throws JspException {
        try {
            super.doStartTag();
            
            CollectionMateriasYaInscriptas collection=new CollectionMateriasYaInscriptas();
            FechaHora fecha=new FechaHora();
            HashMap param=new HashMap();
            param.put("usuario", this.getUsuario());
            param.put("accion", "comprobante");
            param.put("anio_actual", String.valueOf(fecha.getAnioActual())); //BORRARLO CUANDO SETEEN EL LECTIVO EN SESION.
            
            Vector <DatosGrilla> vec=collection.select(param);
            String datosUsuario = "<h3>COMPROBANTE DE INSCRIPCION A MATERIAS N&ordm; "+this.getUsuario().getCarrera().getCod_carrera()+"-"+this.getUsuario().getLegajo()+"-"+fecha.getFechaIso()+"-"+fecha.getHoraIso()+"</h3>"
                                + "<hr>"
                                + "<strong>Carrera:</strong> "+this.getUsuario().getCarrera().getNombre()+"</br>"
                                + "<strong>Estudiante:</strong> "+this.getUsuario().getApellido()+" "+this.getUsuario().getNombre()+".</br>"
                                + "<strong>N&ordm; Legajo:</strong> "+this.getUsuario().getLegajo()+"</br>"
                                + "<strong>Fecha:</strong> "+fecha.getFecha()+" <strong>Hora:</strong> "+fecha.getHora()+"</br>"
                                + "<h3>Tabla de materias inscriptas</h3>";
            
            String tabla = "<thead>"
                        +  "<th><div class=\"text-center\">Codigo</div></th>"
                        +  "<th><div class=\"text-center\">Materia</div></th>"
                        +  "<th><div class=\"text-center\">Situacion Academica</div></th>"
                        +  "<th><div class=\"text-center\">Modalidad</div></th>"
                        +  "<th><div class=\"text-center\">Curso y Turno</div></th>"
                        +  "</thead>"
                        +  "<tbody>";
            
            if (vec.isEmpty()) {
                tabla += "<tr class=\"error\">"
                      +  "<td colspan=\"5\" rowspan=\"5\"><img src=\"static/images/sim/eliminar_materias_inscriptas.jpg\" width=\"100%\" height=\"100%\"></td>"
                      +  "</tr>";
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
                          +  "</tr>";
                }
                datosUsuario+=tabla;
            }
            datosUsuario += "</tbody>";            
            pageContext.getOut().print(datosUsuario);
            
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
