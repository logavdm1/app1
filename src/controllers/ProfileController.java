package controllers;

import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import db_operations.SessionUtility;
import users.ProfileExtraField;
import users.User;

@Controller
@RequestMapping("profile")
public class ProfileController {
	

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod(HttpSession session,ProfileExtraField pf)
	{	
		ModelAndView mdlvie=new ModelAndView();
		Session session1=SessionUtility.GetSessionConnection();
		if(session.getAttribute("user")!=null){
		String hql = "FROM users.User where u_name=:username";
		Query query = session1.createQuery(hql);
		query.setParameter("username",session.getAttribute("user").toString().trim());
		User u = (User) query.list().get(0);
		mdlvie.addObject("user",u);		
		mdlvie.addObject("profileupdate",pf);
		mdlvie.setViewName("profile");
		}
		else
		{
		mdlvie.setViewName("login");
		User u=new User();
		mdlvie.addObject("user",u);
		
		}
		
		
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView userbeandemo()
	{
		
		ModelAndView mdlvie=new ModelAndView();
	
		return mdlvie;
		
	}
	

}
