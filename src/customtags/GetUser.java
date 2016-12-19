package customtags;

import java.util.Iterator;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import users.User;
import demo.SessionUtility;

@SuppressWarnings("serial")
public class GetUser extends TagSupport{

	String key;
	String parameter;

	public String getParameter() {
		return parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public int doEndTag() throws JspException {
		
		Session session=SessionUtility.GetSessionConnection();
		
		
	
		Criteria cr=session.createCriteria(User.class,"user");
		cr.createAlias("user.cars", "car");
		cr.add(Restrictions.eq("car.car_id", Integer.parseInt(key)));			
		
		
		@SuppressWarnings("unchecked")
		List<User> results = cr.list();
		Iterator<User> it=results.iterator();
		
		User u=it.next();
		
		JspWriter out=pageContext.getOut();
		try{
			
			switch(parameter)
			{
			case "username":
				if(u.getU_firstname()!=null)
				out.print(u.getU_firstname());
				else
				out.print("Not Available");
			break;
			case "usertype":
				if(u.getU_type()!=null)
				out.print(u.getU_type());
				else
				out.print("Not Available");
				
			break;
			case "mail":
				if(u.getU_email()!=null)
				out.print(u.getU_email());
				else
				out.print("Not Available");
			break;
			case "phone":
				if(u.getU_phno()!=null)
				out.print(u.getU_phno());
				else
				out.print("Not Available");
			break;
			case "city":
				if(u.getCity()!=null)
				out.print(u.getCity());
				else
				out.print("Not Available");
			break;
			case "state":
				if(u.getState()!=null)
				out.print(u.getState());
				else
				out.print("Not Available");
			break;
			
			case "carcount":
				if(u.getCars()!=null)
				out.print(u.getCars().size());
				else
				out.print("Not Available");
			break;
			
			default:
				out.print("Invalid Parameter");
			break;
			}
			
			

		
		}catch(Exception e){
			
		}
		
		return super.doEndTag();
	}
	
	
}
