package customtags;


import java.util.ResourceBundle;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

@SuppressWarnings("serial")
public class GetTextClass extends TagSupport{

	String key;
	ResourceBundle rb;
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	@Override
	public int doEndTag() throws JspException {
	
		JspWriter out=pageContext.getOut();
		if(pageContext.getSession().getAttribute("languageselection")!=null){
		rb=(ResourceBundle)pageContext.getSession().getAttribute("languageselection");
		
		try{
		out.println(rb.getString(key));
		
		}catch(Exception e){
			
		}
		}
		else
		{
			try {
				out.println(key);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
		}
		return super.doEndTag();
	}
	
	
}
