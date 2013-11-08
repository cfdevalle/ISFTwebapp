package org.isft.web.tags.sif;
import java.util.HashMap;
import java.util.Vector;
import javax.servlet.jsp.JspException;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import org.isft.domain.Alumnos;
import org.isft.domain.FinalInscribible;
import org.isft.domain.FechaFinal;
import org.isft.domain.FinalInscripto;
import org.isft.domain.helper.FechaHora;
import org.isft.logic.collection.CollectionFinalesInscribibles;
import org.isft.logic.collection.CollectionFinalesInscriptos;
import org.isft.web.tags.TagGrilla;
import org.isft.web.tags.TagGrilla;

public class TagFinalesInscribibles extends TagGrilla {
    public int doStartTag() throws JspException {
            super.doStartTag();
            try {
                HashMap hm=new HashMap();
                CollectionFinalesInscribibles cfi=new CollectionFinalesInscribibles();
                hm.put("alumno", pageContext.getSession().getAttribute("alumno"));
		Vector<FinalInscribible> fi=cfi.select(hm);
                String tabla="";
                
                tabla+="<tr><td><h4>Materia</h4></td>";
                tabla+="<td><h4>Fecha</h4></td>";
                tabla+="<td><h4>Modalidad de Inscripcion</h4></td>";
                tabla+="<td><h4>Situacion Academica</h4></td></tr>";
                int cantidad_materias=0;
                for(int i=0;i<fi.size();i++,cantidad_materias++){
                    FinalInscribible finalInscribible=(FinalInscribible)fi.get(i);
                    String modificable="";
                    if(finalInscribible.getAccion().equals("U")){
                        modificable="class=\"warning\"";
                    }else{
                        modificable="class=\"success\"";
                    }
                    tabla+="<tr "+modificable+"><td>"+finalInscribible.getMateria().getNombre()+"</td>";
                    //tabla+="<td><input type=\"checkbox\" id="+"mat"+i+" value="+nombre_checkbox+"></td></tr>";
                    tabla+="<td><select id=\"select"+i+"\">";
                    tabla+="<option value=\""+i+"\"></option>";
					Vector<FechaFinal> fechasFinal=fi.elementAt(i).getFechas(); 
                    for(int j=0;j<fechasFinal.size();j++){
                        tabla+="<option value=\""+finalInscribible.getAccion()+"\">"+fechasFinal.get(j).getFecha()+"("+fechasFinal.get(j).getTurno()+")</option>";
                    }
                    tabla+="</select></td>";
                    tabla+="<td>"+finalInscribible.getSituacion_materia().getModalidadInscripcion()+"</td>";
                    tabla+="<td>"+finalInscribible.getSituacion_materia().getSituacionAcademica()+"</td></tr>";
                    String datos_capturados="";
                    datos_capturados+=finalInscribible.getMateria().getCod_materia()+"-";
                    datos_capturados+=finalInscribible.getCarrera().getCod_carrera()+"-";
                    datos_capturados+=finalInscribible.getAlumno().getLegajo()+"-";
                    datos_capturados+=finalInscribible.getSituacion_materia().getModalidadInscripcion()+"-";
                    FechaHora fecha_actual=new FechaHora();
                    datos_capturados+=fecha_actual.getFechaIso()+"-";
                    System.out.println(datos_capturados);
                    tabla+="<input type=\"hidden\" value=\""+datos_capturados+"\" name="+"mat"+i+" />";
                }
                if(fi.size()==0){
                    tabla+="<input type=\"hidden\" value=\""+fi.size()+"\" name=\"cant_datos\" />";
                }
                tabla+="<input type=\"hidden\" value=\""+cantidad_materias+"\" name=\"cantidad_materias\" />";
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
