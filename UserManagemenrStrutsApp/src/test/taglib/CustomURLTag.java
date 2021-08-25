package test.taglib;

import org.apache.struts2.views.jsp.ComponentTagSupport;
import org.apache.struts2.components.Component;
import com.opensymphony.xwork2.util.ValueStack;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import test.components.UrlComponent;
 
public class CustomURLTag extends ComponentTagSupport {
	private static final long serialVersionUID = 1L;
	protected String searchTerm;
     
    public Component getBean(ValueStack stack, 
             HttpServletRequest req, 
             HttpServletResponse res) {
        return new UrlComponent(stack);
    }
 
    protected void populateParams() {
        super.populateParams();
 
        UrlComponent urlComp = (UrlComponent)component;
        urlComp.setSearchTerm(searchTerm);
    }
 
    public void setSearchTerm(String searchTerm) {
        this.searchTerm = searchTerm;
    }
}