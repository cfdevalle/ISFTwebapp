package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class TagGrilla extends TagSupport {

    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().print("<table id='tablaGrilla' class='table table-hover table-bordered table-condensed'>");
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }
        return SKIP_BODY;
    }

    public int doEndTag() throws JspException {
	      try {
        	pageContext.getOut().print("</table>");
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }
        return EVAL_PAGE;
    }
}
