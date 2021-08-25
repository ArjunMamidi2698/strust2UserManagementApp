package test.components;

import com.opensymphony.xwork2.util.ValueStack;
import org.apache.struts2.components.Component;
 
import java.io.IOException;
import java.io.Writer;
import java.net.URL;
import java.net.URLEncoder;
 
public class UrlComponent extends Component {
    protected String searchTerm;
 
    public UrlComponent(ValueStack stack) {
        super(stack);
    }
 
    public void setSearchTerm(String searchTerm) {
        this.searchTerm = searchTerm;
    }
 
    public boolean start(Writer writer) {
        try {
        	String query = URLEncoder.encode(searchTerm, "UTF-8");
            URL searchURL = new URL("http://www.google.com/search?q=" + query);
            writer.write("<A href=\""+ searchURL + "\" " + "TARGET=_BLANK>Search in Google</A>");
        } catch (IOException e) {
            e.printStackTrace();
        }
 
        return true;
    }
 
    public boolean end(Writer writer) {
        return true;
    }
 
    @Override
    public boolean usesBody() {
        return false;
    }
}