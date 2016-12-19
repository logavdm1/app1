package demo;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import categorymaster.Car;



public class HiberOperations {
	Session session;
	
	public boolean checkuser(String uname)
	{
		 session=SessionUtility.GetSessionConnection();
		
		String hql = "FROM UserEntity where uname = :username";
		
		Query query = session.createQuery(hql);
		
		query.setParameter("username",uname);
		
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		
		Iterator<Car> it=results.iterator();
		
		if (it.hasNext()) {
			
			return true;
		}
		else
		{
			
		return false;
		}
	
	}
	
	
	public boolean changestatus(String uname,int status)
	{
		 session=SessionUtility.GetSessionConnection();
		
		Query query = session.createQuery("update UserEntity set status = :statusval where uname = :unameval");
		
		query.setParameter("statusval",status);
		query.setParameter("unameval",uname);
		
		if (query.executeUpdate()==1) {
			
			SessionUtility.closeSession(null);
			return true;
		}
		else
		{
			return false;
		}
		
		
		
	}
	
	
	public boolean changepassword(String uname,String password)
	{
		 session=SessionUtility.GetSessionConnection();
		
		Query query = session.createQuery("update UserEntity set pass = :statusval where uname = :unameval");
		
		query.setParameter("statusval",password);
		query.setParameter("unameval",uname);
		
		if (query.executeUpdate()==1) {
			
			SessionUtility.closeSession(null);
			return true;
		}
		else
		{
			System.out.println("error in update");
			return false;
		}
		
		
		
	}
	
	
	
	public boolean checkUserAndPassword(String uname,String password){
		
		
		 session=SessionUtility.GetSessionConnection();	
		String hql = "FROM UserEntity where uname = :username AND pass= :password";
		Query query = session.createQuery(hql);
		query.setParameter("username",uname);
		query.setParameter("password",password);
		
		
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		
		Iterator<Car> it=results.iterator();	
		
		if (it.hasNext()) {
			
			return true;
		}
		else
		{
			
		return false;
		}	
	}
	
	
	public boolean checkstatus(String uname)
	{
		
		 session=SessionUtility.GetSessionConnection();
		
		String hql = "FROM UserEntity where uname = :username";
		
		Query query = session.createQuery(hql);
		
		query.setParameter("username",uname);
		
		@SuppressWarnings({ "unchecked", "unused" })
		List<Car> results = query.list();	
		
	
		
		return true;
		
	}
	
	
	
	public boolean InsertDatabase(String uname,String password,int status)
	{
		 session=SessionUtility.GetSessionConnection(); 
		 Car e=new Car();
		 
		 
		 
		 try{
		 session.save(e);	 
		 SessionUtility.closeSession(null);
		 return true;
		 }
		 catch(Exception e1)
		 {
			 System.out.println("failed insert"+e1);
			 return false;
		 }
		 
		
	
	}
	
	
	
	

//
//	public static void main(String[] args) {
//		HiberOperations h=new HiberOperations();
//		
//		System.out.println(h.GetproductImage("apple"));
//		
//	}
//	
	
	
	
	

}
