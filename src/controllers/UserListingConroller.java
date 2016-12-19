package controllers;

import java.util.List;
import java.util.Set;

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
import users.User;



@Controller
@RequestMapping("usercarlisting")
public class UserListingConroller {
	
	Session session=SessionUtility.GetSessionConnection();
	


	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod(HttpSession session1)
	{
		ModelAndView mdlvie=new ModelAndView();
		
		if(session1.getAttribute("user")!=null){
		Car c=new Car();
		CarSearch cs=new CarSearch();
		String hql = "FROM users.User where u_name=:carid ";
		Query query = session.createQuery(hql);
		query.setString("carid",session1.getAttribute("user").toString());
		User u=(User) query.list().get(0);
		Set<Car> carlist= u.getCars();
		mdlvie.addObject("cars",carlist);
		mdlvie.addObject("carobj",c);
		cs.setTotal_result_count(carlist.size());
		mdlvie.addObject("searchcar",cs);
		mdlvie.setViewName("listusercar");
		}
		else
		{
			Car c=new Car();
			CarSearch carsearchobj=new CarSearch();
			String hql = "FROM categorymaster.Car";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Car> results = query.list();
			
			mdlvie.addObject("searchcar",carsearchobj);
			mdlvie.addObject("cars",results);
			mdlvie.addObject("carobj",c);
			mdlvie.setViewName("index");
		}
		
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
