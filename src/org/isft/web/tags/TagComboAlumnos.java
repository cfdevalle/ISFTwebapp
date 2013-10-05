package org.isft.web.tags;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
//import org.isft.logic.collection.CollectionMateria;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Alumnos;

public class TagComboAlumnos extends TagCombo {
    public int legajo=0;
//    public String nombre;
 //   public String apellido;
    
    public int doStartTag() throws JspException {
        try {
        		
            super.doStartTag();
            /**
             * FIXME: Agregar la clase CollectionMateria
             */
            /*
            CollectionMateria collection=new CollectionMateria();
            HashMap param=new HashMap();
            Vector vec=collection.select(param);

            for(int i=0; i<vec.size(); i++){
                Materia materia= (Materia)vec.get(i);
                pageContext.getOut().print("<option value=\""+materia.getCod_materia()+"\">"+materia.getNombre()+"</option>\n");
            }
            */
			//int paramLegajo= this.getLegajo();
			
			pageContext.getOut().print("paramLegajo: "+this.getLegajo()+" \n");
			pageContext.getOut().print("<option value='1'>Sebastian Marquez</option>\n");
			pageContext.getOut().print("<option value='2'>Dante </option>\n");
	} catch(Exception exc){
            exc.printStackTrace();
            throw new JspException("Exception en TagCombo Alumno" + exc.getMessage());
        }
        return SKIP_BODY;
    }
    
    public int doEndTag() throws JspException {
        try{
        	super.doEndTag();
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }return EVAL_PAGE;
    }
	/*
	 * Sirve para setear/recuperar value
	 */
	  public void setLegajo(int legajo){
	  	this.legajo=legajo;
	  }
	  public int getLegajo(){
	  	return this.legajo;
	  }
}
