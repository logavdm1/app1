package controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import db_operations.HiberOperations;
import users.User;



@Controller
@RequestMapping("login")
public class LoginController {
	
	HiberOperations db=new HiberOperations();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod()
	{
		User u=new User();
		ModelAndView mdlvie=new ModelAndView();
		mdlvie.setViewName("login");
		mdlvie.addObject("user",u);
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public String userbeandemo(User u,HttpSession session)
	{
		
		
		if (db.checkuser(u.getU_name().trim())) {
			
			if(db.checkUserAndPassword(u.getU_name().trim(),u.getU_pass().trim()))
					{
						session.setAttribute("user",u.getU_name());
						return "redirect:index";
					}
			else
			{
				return "redirect:login";
			}
		}
		else
		{
			return "redirect:register";
		}
		

	
		
	}
	

}
