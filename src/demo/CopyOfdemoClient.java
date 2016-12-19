package demo;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.hibernate.Session;
import users.User;
import categorymaster.Car;
import categorymaster.CarImgs;
import categorymaster.ExtraFeatures;


public class CopyOfdemoClient {
	
	public static void main(String[] args) {
		
		Session session=SessionUtility.GetSessionConnection();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Date now = new Date();
		 String[] strDate = sdf.format(now).split("-");
		 String day=strDate[0];
		 String month=strDate[1];
		 String year=strDate[2];
		 
		
	
		User u=new User();
		
		
		
		
		
		Car c1=new Car();
		Car c2=new Car();
		Car c3=new Car();
		Car c4=new Car();
		
		
		ExtraFeatures fea1=new ExtraFeatures();
		ExtraFeatures fea2=new ExtraFeatures();
		ExtraFeatures fea3=new ExtraFeatures();
		ExtraFeatures fea4=new ExtraFeatures();
		
		
		fea1.setFeature_id(1);
		fea1.setSecurity_System("yes");
		fea1.setAir_Conditioning("yes");
		fea1.setAlloy_Wheels("yes");
		fea1.setAnti_Lock_Brakes("yes");
		fea1.setAnti_Theft("yes");
		fea1.setAnti_Starter("yes");
		
		fea1.setDual_Airbag("yes");
		fea1.setIntermittent_Wipers("yes");
		fea1.setKeyless_Entry("yes");
		fea1.setPower_Mirrors("yes");
		fea1.setPower_Seat("yes");
		fea1.setPower_Steering("yes");
		
		fea1.setCD_Player("yes");
		fea1.setDriver_Side_Airbag("yes");
		fea1.setPower_Windows("yes");
		fea1.setRemote_Start("yes");
		
		
		
		
		fea2.setFeature_id(2);
		fea2.setSecurity_System("yes");
		fea2.setAir_Conditioning("yes");
		fea2.setAlloy_Wheels("yes");
		fea2.setAnti_Lock_Brakes("yes");
		fea2.setAnti_Theft("yes");
		fea2.setAnti_Starter("yes");
		
		fea2.setDual_Airbag("yes");
		fea2.setIntermittent_Wipers("yes");
		fea2.setKeyless_Entry("yes");
		fea2.setPower_Mirrors("yes");
		fea2.setPower_Seat("yes");
		fea2.setPower_Steering("yes");
		
		fea2.setCD_Player("yes");
		fea2.setDriver_Side_Airbag("yes");
		fea2.setPower_Windows("yes");
		fea2.setRemote_Start("yes");
		
		
		fea3.setFeature_id(3);
		fea3.setSecurity_System("yes");
		fea3.setAir_Conditioning("yes");
		fea3.setAlloy_Wheels("yes");
		fea3.setAnti_Lock_Brakes("yes");
		fea3.setAnti_Theft("yes");
		fea3.setAnti_Starter("yes");
		
		fea3.setDual_Airbag("yes");
		fea3.setIntermittent_Wipers("yes");
		fea3.setKeyless_Entry("yes");
		fea3.setPower_Mirrors("yes");
		fea3.setPower_Seat("yes");
		fea3.setPower_Steering("yes");
		
		fea3.setCD_Player("yes");
		fea3.setDriver_Side_Airbag("yes");
		fea3.setPower_Windows("yes");
		fea3.setRemote_Start("yes");
		
		
		fea4.setFeature_id(4);
		fea4.setSecurity_System("yes");
		fea4.setAir_Conditioning("yes");
		fea4.setAlloy_Wheels("yes");
		fea4.setAnti_Lock_Brakes("yes");
		fea4.setAnti_Theft("yes");
		fea4.setAnti_Starter("yes");
		
		fea4.setDual_Airbag("yes");
		fea4.setIntermittent_Wipers("yes");
		fea4.setKeyless_Entry("yes");
		fea4.setPower_Mirrors("yes");
		fea4.setPower_Seat("yes");
		fea4.setPower_Steering("yes");
		
		fea4.setCD_Player("yes");
		fea4.setDriver_Side_Airbag("yes");
		fea4.setPower_Windows("yes");
		fea4.setRemote_Start("yes");
		
		
		
		Set<ExtraFeatures> feaset1=new HashSet<ExtraFeatures>();
		Set<ExtraFeatures> feaset2=new HashSet<ExtraFeatures>();
		Set<ExtraFeatures> feaset3=new HashSet<ExtraFeatures>();
		Set<ExtraFeatures> feaset4=new HashSet<ExtraFeatures>();
		
		feaset1.add(fea1);
		feaset2.add(fea2);
		feaset3.add(fea3);
		feaset4.add(fea4);
		
		
		
		CarImgs img1=new CarImgs();
		CarImgs img2=new CarImgs();
		CarImgs img3=new CarImgs();
		CarImgs img4=new CarImgs();
		CarImgs img5=new CarImgs();
		CarImgs img6=new CarImgs();
		
		CarImgs img7=new CarImgs();
		CarImgs img8=new CarImgs();
		CarImgs img9=new CarImgs();
		CarImgs img10=new CarImgs();
		CarImgs img11=new CarImgs();
		CarImgs img12=new CarImgs();
		
		CarImgs img13=new CarImgs();
		CarImgs img14=new CarImgs();
		CarImgs img15=new CarImgs();
		CarImgs img16=new CarImgs();
		CarImgs img17=new CarImgs();
		CarImgs img18=new CarImgs();
		
		CarImgs img19=new CarImgs();
		CarImgs img20=new CarImgs();


		
		
		img1.setCar_img_id(1);
		img1.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big1.jpg");
		img2.setCar_img_id(2);
		img2.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big2.jpg");
		img3.setCar_img_id(3);
		img3.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big3.jpg");	
		img4.setCar_img_id(4);
		img4.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big4.jpg");
		img5.setCar_img_id(5);
		img5.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big5.jpg");
		
		
		

		img6.setCar_img_id(6);
		img6.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big1.jpg");
		img7.setCar_img_id(7);
		img7.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big2.jpg");
		img8.setCar_img_id(8);
		img8.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big3.jpg");
		img9.setCar_img_id(9);
		img9.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big4.jpg");
		img10.setCar_img_id(10);
		img10.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big5.jpg");
		
		
		
		img11.setCar_img_id(11);
		img11.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big1.jpg");
		img12.setCar_img_id(12);
		img12.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big2.jpg");
		img13.setCar_img_id(13);
		img13.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big3.jpg");
		img14.setCar_img_id(14);
		img14.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big4.jpg");
		img15.setCar_img_id(15);
		img15.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big5.jpg");
		
		
		
		
		img16.setCar_img_id(16);
		img16.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big1.jpg");
		img17.setCar_img_id(17);
		img17.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big2.jpg");
		img18.setCar_img_id(18);
		img18.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big3.jpg");
		img19.setCar_img_id(19);
		img19.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big4.jpg");
		img20.setCar_img_id(20);
		img20.setImg_url("http://php-videohost.rhcloud.com/resources/media/620x485/big5.jpg");
		
		
		
		Set<CarImgs> imgset1=new HashSet<CarImgs>();
		Set<CarImgs> imgset2=new HashSet<CarImgs>();
		Set<CarImgs> imgset3=new HashSet<CarImgs>();
		Set<CarImgs> imgset4=new HashSet<CarImgs>();
		
		
		
		
		imgset1.add(img1);
		imgset1.add(img2);
		imgset1.add(img3);
		imgset1.add(img4);
		imgset1.add(img5);
		
		
		
		
		
		imgset2.add(img6);
		imgset2.add(img7);
		imgset2.add(img8);
		imgset2.add(img9);
		imgset2.add(img10);
		
		
		
		
		imgset3.add(img11);
		imgset3.add(img12);
		imgset3.add(img13);
		imgset3.add(img14);
		imgset3.add(img15);
		
		
		
		imgset4.add(img16);
		imgset4.add(img17);
		imgset4.add(img18);
		imgset4.add(img19);
		imgset4.add(img20);
		
		
		
		
		
		c1.setCar_id(1);
		c1.setCar_status("Pre Owned");
		c1.setCar_make("MERCEDES");
		c1.setCar_model("AMG GT / GT S");
		c1.setKilometres("39000");
		c1.setBody_Type("Sedan");
		c1.setStyle("SV Premium");
		c1.setEngine("Diesel");
		c1.setTransmission("Auto");
		c1.setExterior_Color("Yellow");
		c1.setInterior_color("White");
		c1.setPassangers_Doors("4 Passanger");
		c1.setFuel_Type("Diesel");
		c1.setMileage("10.8L/100km");
		c1.setYear_model("2016");
		c1.setPost_day(day);
		c1.setPost_month(month);
		c1.setPost_year(year);
		c1.setEstimated_price("$184,900");
		c1.setCar_imgs(imgset1);
		c1.setLocation("Coimbatore");
		c1.setTumb_img("http://php-videohost.rhcloud.com/resources/media/186x113/mers.jpg");
		c1.setExtra_features(feaset1);
		
		
		
		
		c2.setCar_id(2);
		c2.setCar_status("Pre Owned");
		c2.setCar_make("Audi");
		c2.setCar_model("R8 Spider");
		c2.setKilometres("39000");
		c2.setBody_Type("Sedan");
		c2.setStyle("SV Premium");
		c2.setEngine("Diesel");
		c2.setTransmission("Auto");
		c2.setExterior_Color("Yellow");
		c2.setInterior_color("White");
		c2.setPassangers_Doors("4 Passanger");
		c2.setFuel_Type("Diesel");
		c2.setMileage("10.8L/100km");
		c2.setYear_model("2016");
		c2.setPost_day(day);
		c2.setPost_month(month);
		c2.setPost_year(year);
		c2.setEstimated_price("$95,900");
		c2.setCar_imgs(imgset2);
		c2.setLocation("Chennai");
		c2.setTumb_img("http://php-videohost.rhcloud.com/resources/media/186x113/audi.jpg");
		c2.setExtra_features(feaset2);
		
		
		
		
		
		c3.setCar_id(3);
		c3.setCar_status("Pre Owned");
		c3.setCar_make("ASTON");
		c3.setCar_model("MARTIN VANTAGE");
		c3.setKilometres("39000");
		c3.setBody_Type("Sedan");
		c3.setStyle("SV Premium");
		c3.setEngine("Diesel");
		c3.setTransmission("Auto");
		c3.setExterior_Color("Yellow");
		c3.setInterior_color("White");
		c3.setPassangers_Doors("4 Passanger");
		c3.setFuel_Type("Diesel");
		c3.setMileage("10.8L/100km");
		c3.setYear_model("2016");
		c3.setPost_day(day);
		c3.setPost_month(month);
		c3.setPost_year(year);
		c3.setEstimated_price("$ 101,025");
		c3.setCar_imgs(imgset3);
		c3.setLocation("Banglore");
		c3.setTumb_img("http://php-videohost.rhcloud.com/resources/media/186x113/aston.jpg");
		c3.setExtra_features(feaset3);
		
		
		
		
		
		c4.setCar_id(4);
		c4.setCar_status("Pre Owned");
		c4.setCar_make("JAGUAR");
		c4.setCar_model("F TYPE-R");
		c4.setKilometres("39000");
		c4.setBody_Type("Sedan");
		c4.setStyle("SV Premium");
		c4.setEngine("Diesel");
		c4.setTransmission("Auto");
		c4.setExterior_Color("Yellow");
		c4.setInterior_color("White");
		c4.setPassangers_Doors("4 Passanger");
		c4.setFuel_Type("Diesel");
		c4.setMileage("10.8L/100km");
		c4.setYear_model("2016");
		c4.setPost_day(day);
		c4.setPost_month(month);
		c4.setPost_year(year);
		c4.setEstimated_price("$ 120,825");
		c4.setCar_imgs(imgset4);
		c4.setLocation("Mumbai");
		c4.setTumb_img("http://php-videohost.rhcloud.com/resources/media/186x113/jaguar.jpg");
		c4.setExtra_features(feaset4);
		
		
		
		Set<Car> carset=new HashSet<Car>();
		
		carset.add(c1);
		carset.add(c2);
		carset.add(c3);
		carset.add(c4);
		
		
		u.setUid(1);
		u.setU_name("logavdm");
		u.setU_pass("root");
		u.setU_type("Individual");
		u.setU_email("loganathan.d@servion.com");
		u.setU_firstname("Loganathan");
		u.setU_lastname("Dhandapani");
		u.setU_photo("https://cdn3.iconfinder.com/data/icons/rcons-user-action/32/boy-512.png");
		u.setU_address("3/34 vadambacheri");
		u.setState("Tamil Nadu");
		u.setCity("Coimbatore");
		u.setU_phno("9894431212");
		u.setCars(carset);
		
		session.save(fea1);
		session.save(fea2);
		session.save(fea3);
		session.save(fea4);
		
		

		session.save(img1);
		session.save(img2);
		session.save(img3);
		session.save(img4);
		session.save(img5);
		session.save(img6);
		session.save(img7);
		session.save(img8);
		session.save(img9);
		session.save(img10);
		session.save(img11);
		session.save(img12);
		session.save(img13);
		session.save(img14);
		session.save(img15);
		session.save(img16);
		session.save(img17);
		session.save(img18);
		session.save(img19);
		session.save(img20);
		
		session.save(c1);
		session.save(c2);
		session.save(c3);
		session.save(c4);
		
		session.save(u);
		
		
		
		SessionUtility.closeSession(null);
		
//		private void addRestrictionIfNotNull(Criteria criteria, String propertyName, Object value) {
//		    if (value != null) {
//		        criteria.add(Restrictions.eq(propertyName, value));
//		    }
//		}
		
		
		
		
//		Criteria criteria = session.createCriteria(PersonEntity.class);
//		addRestrictionIfNotNull(critera, "LastName", person.getLastName());
//		addRestrictionIfNotNull(critera, "FirstName", person.getFirstName());
//		addRestrictionIfNotNull(critera, "email", person.getEmail());
//
//		persons = criteria.list();
		
		
//		
//		String hql = "FROM users.User";
//		
//		Query query = session.createQuery(hql);
//
//		@SuppressWarnings("unchecked")
//		List<User> results = query.list();
//		
//		Iterator<User> it=results.iterator();
//		
//		while (it.hasNext()) {
//			User user = (User) it.next();
//			
//			Set<Car> set1= user.getCars();
//			
//			Iterator<Car> itc=set1.iterator();
//			while (itc.hasNext()) {
//				
//				System.out.println(itc.next().getCar_id());
//				
//			}
//			
//			System.out.println(user.getU_name());
//			
//		}
//		
//		
//		SessionUtility.closeSession(null);
//		
		
		
		
	}

}
