package test.components;

import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;
import java.io.IOException;
import java.io.Writer;

import test.components.UrlComponent;

public class TestComponent extends Component {
    protected String name;
 
    public TestComponent(ValueStack stack) {
        super(stack);
    }
 
    public void setName(String name) {
    	System.out.printf(name, "in component file***************");
        this.name = name;
    }
 
    public boolean start(Writer writer) {
        try {
        	System.out.println("start method in component file***************");
            writer.write("Hello " + name+"<br>");
            writer.write("Hello in h6 tag<h6>" + name +"</h6>");
            writer.write("<div>");
            UrlComponent urlComp = (UrlComponent)component;
            urlComp.setSearchTerm(name);
            System.out.println(urlComp);
            writer.write(urlComp());
            writer.write("</div>");
        } catch (IOException e) {
            e.printStackTrace();
        }
 
        return true;
    }
 
    public boolean end(Writer writer) {
    	System.out.println("end method in component file***************");
        return true;
    }
 
    @Override
    public boolean usesBody() {
    	System.out.println("usesBody method in component file***************");
        return false;
    }
}