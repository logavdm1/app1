package controllers;

import java.util.Locale;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("lang")
public class LangController {





	@RequestMapping(method=RequestMethod.GET)
	public String getmethod(HttpSession session,HttpServletRequest request)
	{
		
		
		System.out.println(request.getParameter("language"));
		ResourceBundle rb=ResourceBundle.getBundle("dictionary",new Locale(request.getParameter("language")));
		session.setAttribute("languageselection",rb);
		
		
		return "redirect:/index";
	}
	
	
	
	
	

}
