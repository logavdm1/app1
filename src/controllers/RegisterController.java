package controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import db_operations.HiberOperations;
import users.RegisterUser;
import users.User;

@Controller
@RequestMapping("register")
public class RegisterController {

	HiberOperations db=new HiberOperations();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod()
	{
		RegisterUser u=new RegisterUser();
		ModelAndView mdlvie=new ModelAndView();
		mdlvie.setViewName("register");
		mdlvie.addObject("user",u);
		
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView userbeandemo(User bean,HttpSession session)
	{
		
		ModelAndView mdlvie=new ModelAndView();
		
		if(!db.checkuser(bean.getU_name()))
		{
			if(db.registeruser(2,bean.getU_name(),bean.getU_pass(),bean.getU_type(),bean.getU_email(),bean.getU_firstname(),bean.getU_lastname(),bean.getU_phno(),bean.getU_address(),bean.getState(),bean.getCity(),bean.getU_photo()))
			{
				mdlvie.setViewName("login");
			}
			else
			{
				mdlvie.setViewName("register");
			}
		}
		else
		{
			mdlvie.setViewName("login");
		}
		
		mdlvie.addObject("user",bean);
		return mdlvie;
		
	}
	

}
