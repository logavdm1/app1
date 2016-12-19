package controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import categorymaster.Car;
import categorymaster.CarImageCollection;
import categorymaster.CarImgs;
import categorymaster.ExtraFeatures;
import db_operations.HiberOperations;
import db_operations.SessionUtility;




@Controller
@RequestMapping("addcartolist")
public class AddToListing {
	
	HiberOperations db=new HiberOperations();
	
	@RequestMapping(method=RequestMethod.GET)
	public void methodget(HttpSession session)
	{
		methodpost(session);
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView methodpost(HttpSession session)
	{
		Session session1=SessionUtility.GetSessionConnection();
		
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Date now = new Date();
		 String[] strDate = sdf.format(now).split("-");
		 String day=strDate[0];
		 String month=strDate[1];
		 String year=strDate[2];
		
		
		
		Query query=session1.createQuery("From categorymaster.CarImgs");
		int imgid=query.list().size();
		imgid++;
		
		Query query1=session1.createQuery("From categorymaster.ExtraFeatures");
		int fid=query1.list().size();
		fid++;
		
		Query query2=session1.createQuery("From categorymaster.Car");
		int cid=query2.list().size();
		cid++;
		
		
		ModelAndView mdl=new ModelAndView();
		Car c=(Car) session.getAttribute("caradd");
		c.setCar_id(cid);
		c.setPost_day(day);
		c.setPost_month(month);
		c.setPost_year(year);
		ExtraFeatures e=(ExtraFeatures) session.getAttribute("carextra");
		e.setFeature_id(fid);
		CarImageCollection cic=(CarImageCollection) session.getAttribute("carphotos");
		
		Set<CarImgs> imgs=new HashSet<CarImgs>();
		if(cic.getImg1()!=null)
		{
			CarImgs img=new CarImgs();
			img.setCar_img_id(imgid);
			imgid++;
			img.setImg_url(cic.getImg1());
			imgs.add(img);
			
		}
		if(cic.getImg2()!=null)
		{
			CarImgs img=new CarImgs();
			img.setCar_img_id(imgid);
			imgid++;
			img.setImg_url(cic.getImg2());
			imgs.add(img);
			
		}
		if(cic.getImg3()!=null)
		{
			CarImgs img=new CarImgs();
			img.setCar_img_id(imgid);
			imgid++;
			img.setImg_url(cic.getImg3());
			imgs.add(img);
			
		}
		if(cic.getImg4()!=null)
		{
			CarImgs img=new CarImgs();
			img.setCar_img_id(imgid);
			imgid++;
			img.setImg_url(cic.getImg4());
			imgs.add(img);
			
		}
		if(cic.getImg5()!=null)
		{
			CarImgs img=new CarImgs();
			img.setCar_img_id(imgid);
			imgid++;
			img.setImg_url(cic.getImg5());
			imgs.add(img);
			
		}
		
		Set<ExtraFeatures> extra=new HashSet<ExtraFeatures>();
		extra.add(e);
		
		c.setExtra_features(extra);
		c.setCar_imgs(imgs);
		
		db.InsertListing(c,session);
		
		mdl.setViewName("listsuccess");
		
		System.out.println("success");
		
		return mdl;
		
	}
	

}
