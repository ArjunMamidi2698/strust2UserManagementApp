package test.taglib;

import org.apache.struts2.views.jsp.ComponentTagSupport;
import org.apache.struts2.components.Component;
import com.opensymphony.xwork2.util.ValueStack;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import test.components.TestComponent;
 
public class TestTag extends ComponentTagSupport {
	private static final long serialVersionUID = 1L;
	protected String name;
     
    public Component getBean(ValueStack stack, 
             HttpServletRequest req, 
             HttpServletResponse res) {
    	System.out.println(stack);
    	System.out.println(req);
    	System.out.println(res);
        return new TestComponent(stack);
    }
 
    protected void populateParams() {
        super.populateParams();
        System.out.printf(name, "in populate params");
        TestComponent hello = (TestComponent)component;
        hello.setName(name);
    }
 
    public void setName(String name) {
    	System.out.println(name+ "in tag component");
        this.name = name;
    }
}