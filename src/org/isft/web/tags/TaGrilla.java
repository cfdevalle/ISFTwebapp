package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class TagGrilla extends TagSupport {

    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().print("<table width='100%' border='1'>");
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
