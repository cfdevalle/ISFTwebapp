package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import org.isft.logic.collection.CollectionMateria;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Materia;

public class TagComboMateria extends TagCombo {
    private int cod_materia;
    private String nombre;
    
    public int doStartTag() throws JspException {
        try {
        		
            super.doStartTag();

            CollectionMateria collection=new CollectionMateria();
            HashMap param=new HashMap();
            Vector vec=collection.select(param);

            for(int i=0; i<vec.size(); i++){
                Materia materia= (Materia)vec.get(i);
                pageContext.getOut().print("<option value=\""+materia.getCod_materia()+"\">"+materia.getNombre()+"</option>\n");
            }
            
	} catch(Exception exc){
            exc.printStackTrace();
            throw new JspException("Exception en TagCombo Materia" + exc.getMessage());
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
	  public void setCod_materia(int cod_materia){
	  	this.cod_materia=cod_materia;
	  }
	  public String getNombre(){
	  	return this.nombre;
	  }
}
