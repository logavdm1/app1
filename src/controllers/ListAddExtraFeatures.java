package controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import categorymaster.Car;
import categorymaster.CarImageCollection;
import categorymaster.ExtraFeatures;

@Controller
@RequestMapping("addextra")
public class ListAddExtraFeatures {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod(HttpSession session)
	{
		ModelAndView mdl=new ModelAndView();
		if(session.getAttribute("caradd")!=null){
		ExtraFeatures f=new ExtraFeatures();	
		mdl.addObject("carextra",f);
		mdl.setViewName("postads2");
		}
		else
		{
			mdl.addObject("car",new Car());
			mdl.setViewName("postads1");
		}
		return mdl;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView userbeandemo(ExtraFeatures ef,HttpSession session)
	{
		ModelAndView mdl=new ModelAndView();
		if(session.getAttribute("caradd")!=null){
		session.setAttribute("carextra",ef);
		mdl.setViewName("postads3");
		mdl.addObject("carphotos",new CarImageCollection());
		}
		else
		{
			
		}
		return mdl;
		
	}

}
