package controllers;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import categorymaster.Car;
import db_operations.HiberOperations;
import db_operations.SessionUtility;



@Controller
@RequestMapping("details")
public class CarDetailController {
	
	Session session=SessionUtility.GetSessionConnection();
	
	HiberOperations db=new HiberOperations();

	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView postmethod(Car c)
	{
		Car cobj=new Car();
		List<Car> randomcar=db.getrandomCar();
		ModelAndView mdlvie=new ModelAndView();
		String hql = "FROM categorymaster.Car where car_id=:carid";
		Query query = session.createQuery(hql);
		query.setInteger("carid",c.getCar_id());
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		mdlvie.addObject("car",results.get(0));
		mdlvie.setViewName("details");
		mdlvie.addObject("rancar",randomcar);
		mdlvie.addObject("carobj",cobj);
		
		return mdlvie;
	}
	
	
	

}
