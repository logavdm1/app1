package controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import categorymaster.Car;
import categorymaster.CarSearch;
import db_operations.SessionUtility;



@Controller
@RequestMapping("listingfilter")
public class ListControllerWithFilter {
	
	Session session=SessionUtility.GetSessionConnection();
	


	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod()
	{
		Car c=new Car();
		CarSearch cs=new CarSearch();
		ModelAndView mdlvie=new ModelAndView();
		String hql = "FROM categorymaster.Car";
		Query query = session.createQuery(hql);
		query.setString("carmodel","Diesel");
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		mdlvie.addObject("cars",results);
		mdlvie.addObject("searchcar",cs);
		mdlvie.addObject("carobj",c);
		mdlvie.setViewName("listing");
		
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView postmethod(CarSearch c,HttpSession session1)
	{
		
		ModelAndView mdlvie=new ModelAndView();
		String hql = "FROM categorymaster.Car";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		mdlvie.addObject("cars",results);
		mdlvie.addObject("searchcar",c);
	
		mdlvie.setViewName("list");
		return mdlvie;
	}
	
	
	

}
