package controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import db_operations.HiberOperations;

@Controller
@RequestMapping("logout")
public class LogoutController {


	HiberOperations db=new HiberOperations();
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String logoutActionget(HttpSession session)
	{
		
		@SuppressWarnings("unused")
		String uname=session.getAttribute("user").toString().trim();
		session.invalidate();
		
		
		return "redirect:/index";
	}
	
	
	
	
	
}
