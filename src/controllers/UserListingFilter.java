package controllers;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import categorymaster.Car;
import categorymaster.CarSearch;
import db_operations.SessionUtility;
import users.User;



@Controller
@RequestMapping("userlistfilter")
public class UserListingFilter {
	
	Session session=SessionUtility.GetSessionConnection();
	


	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getmethod(HttpSession session1)
	{
		Car c=new Car();
		CarSearch cs=new CarSearch();
		ModelAndView mdlvie=new ModelAndView();
		String hql = "FROM categorymaster.Car where u_name=:username";
		Query query = session.createQuery(hql);
		query.setString("username",session1.getAttribute("username").toString());
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		mdlvie.addObject("cars",results);
		mdlvie.addObject("carobj",c);
		cs.setTotal_result_count(results.size());
		mdlvie.addObject("searchcar",cs);
		mdlvie.setViewName("listing");
		
		return mdlvie;
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView postmethod(CarSearch cs,HttpSession session1)
	{
		Car c=new Car();
		ModelAndView mdlvie=new ModelAndView();
		Criteria criteria = session.createCriteria(User.class);
		addRestrictionIfNotNull(criteria, "location", cs.getLocation().toString().trim());
		addRestrictionIfNotNull(criteria, "car_status", cs.getCar_status().toString().trim());
		addRestrictionIfNotNull(criteria, "car_make",cs.getCar_make().toString().trim());
		addRestrictionIfNotNull(criteria, "Engine",cs.getCar_make().toString().trim());
		criteria.add(Restrictions.eq("uid", cs.getUser_id()));
		
		@SuppressWarnings("unchecked")
		List<Car> results = criteria.list();
		cs.setTotal_result_count(results.size());
		mdlvie.addObject("cars",results);
		mdlvie.addObject("carobj",c);
		mdlvie.addObject("searchcar",cs);		
		mdlvie.setViewName("listing");
		return mdlvie;
	}
	
	
	private void addRestrictionIfNotNull(Criteria criteria, String propertyName, String value) {
	    if (!value.equalsIgnoreCase("any")) {
	        criteria.add(Restrictions.eq(propertyName, value));
	    }
	}
	
	

}
