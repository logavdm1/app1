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
@RequestMapping("listing")
public class ListController {
	
	Session session=SessionUtility.GetSessionConnection();
	


	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod()
	{
		Car c=new Car();
		CarSearch cs=new CarSearch();
		ModelAndView mdlvie=new ModelAndView();
		String hql = "FROM categorymaster.Car";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		mdlvie.addObject("cars",results);
		mdlvie.addObject("carobj",c);
		mdlvie.addObject("searchcar",cs);
		mdlvie.setViewName("listing");
		
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView postmethod(Car c,HttpSession session1)
	{
		String hql = "FROM categorymaster.Car where car_id=:carid ";
		Query query = session.createQuery(hql);
		query.setInteger("carid",c.getCar_id());
		c=(Car) query.list().get(0);
		ModelAndView mdlvie=new ModelAndView();
		mdlvie.addObject("car",c);
		
		mdlvie.setViewName("detail");
		return mdlvie;
	}
	
	
	

}
