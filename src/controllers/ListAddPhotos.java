package controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import categorymaster.CarImageCollection;


@Controller
@RequestMapping("addphotos")
public class ListAddPhotos {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod(CarImageCollection cic,HttpSession session)
	{
		ModelAndView mdl=new ModelAndView();
		if(session.getAttribute("caradd")!=null && session.getAttribute("carextra")!=null){
		session.setAttribute("carphotos",cic);
		mdl.setViewName("postads4");
		
		}
		else
		{
			mdl.setViewName("postads");
		}
		return mdl;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView userbeandemo(CarImageCollection cic,HttpSession session)
	{
		ModelAndView mdl=new ModelAndView();
		if(session.getAttribute("caradd")!=null && session.getAttribute("carextra")!=null){
		session.setAttribute("carphotos",cic);
		mdl.setViewName("postads4");
		
		}
		else
		{
			mdl.setViewName("postads");
		}
		return mdl;
		
	}

}
