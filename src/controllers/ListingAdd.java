package controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import categorymaster.Car;
import categorymaster.ExtraFeatures;
import db_operations.HiberOperations;




@Controller
@RequestMapping("addlisting")
public class ListingAdd {
	
	HiberOperations db=new HiberOperations();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView methodget()
	{
		ModelAndView mdl=new ModelAndView();
		mdl.addObject("car",new Car());
		mdl.setViewName("postads1");
		return mdl;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView methodpost(Car c,HttpSession session)
	{
		
		session.setAttribute("caradd",c);
		ModelAndView mdl=new ModelAndView();
		mdl.setViewName("postads2");
		mdl.addObject("extrafeature",new ExtraFeatures());
		return mdl;
		
	}
	

}
