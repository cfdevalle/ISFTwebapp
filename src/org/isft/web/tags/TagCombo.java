package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class TagCombo extends TagSupport {
    private boolean disabled;
    private String onChange="";
    private boolean obligatorio;
    private String onClick="";
    private String nombreCombo="";
    
    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().print("<select id=\""+ getNombreCombo() + "\"  name=\""+getNombreCombo() + "\""  + (getDisabled()?"disabled":"") + " onClick='" + getOnClick() + "' onChange='" + getOnChange() + "'>\n");
            if(!getObligatorio()){
              pageContext.getOut().print("<option value=\"&nbsp;\"></option>\n");
            }
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }
        return SKIP_BODY;
    }
    
    public int doEndTag() throws JspException {
	      try {
        	pageContext.getOut().print("</select>\n");
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }
        return EVAL_PAGE;
    }

      
    public void setDisabled(boolean disabled){
        this.disabled=disabled;
    }

    public void setOnChange(String onChange){
        this.onChange=onChange;
    }

    public void setOnClick(String onClick){
        this.onClick=onClick;
    }

    public void setObligatorio(boolean obligatorio) {
        this.obligatorio = obligatorio;
    }

    public boolean getObligatorio() {
       return this.obligatorio;
    }

    public void setNombreCombo(String nombreCombo) {
        this.nombreCombo = nombreCombo;
    }

    public String getNombreCombo() {
        return nombreCombo;
    }

    public boolean getDisabled() {
        return this.disabled;
    }

    public String getOnChange() {
        return onChange;
    }

    public String getOnClick() {
        return onClick;
    }

}
