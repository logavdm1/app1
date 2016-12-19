package db_operations;

import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import users.User;
import categorymaster.Car;

public class HiberOperations {

	Session session;

	public boolean checkuser(String uname) {
		session = SessionUtility.GetSessionConnection();

		String hql = "FROM users.User where u_name=:username";

		Query query = session.createQuery(hql);

		query.setParameter("username", uname);

		@SuppressWarnings("unchecked")
		List<User> results = query.list();

		Iterator<User> it = results.iterator();

		if (it.hasNext()) {

			SessionUtility.closeSession(null);
			return true;
		} else {
			SessionUtility.closeSession(null);
			return false;
		}

	}

	public boolean registeruser(int uid, String uname, String upass, String utype, String uemail, String firstname,
			String lastname, String phno, String address, String State, String City, String photo) {
		session = SessionUtility.GetSessionConnection();
		User u = new User();
		u.setUid(2);
		u.setU_name(uname);
		u.setU_pass(upass);
		u.setU_type(utype);
		u.setU_email(uemail);
		u.setU_firstname(firstname);
		u.setU_lastname(lastname);
		u.setU_phno(phno);
		u.setU_address(address);
		u.setState(State);
		u.setCity(City);
		u.setU_photo(photo);
		session.save(u);

		SessionUtility.closeSession(null);

		return true;
	}

	public List<Car> getrandomCar() {
		session = SessionUtility.GetSessionConnection();
		String hql = "FROM categorymaster.Car";
		Query query = session.createQuery(hql);
		query.setMaxResults(4);
		@SuppressWarnings("unchecked")
		List<Car> results = query.list();
		return results;
	}

	public boolean changepassword(String uname, String password) {
		session = SessionUtility.GetSessionConnection();

		Query query = session.createQuery("update UserEntity set pass = :statusval where uname = :unameval");

		query.setParameter("statusval", password);
		query.setParameter("unameval", uname);

		if (query.executeUpdate() == 1) {

			SessionUtility.closeSession(null);
			return true;
		} else {
			System.out.println("error in update");
			return false;
		}

	}

	public boolean checkUserAndPassword(String uname, String password) {

		session = SessionUtility.GetSessionConnection();
		String hql = "FROM users.User where u_name =:username AND u_pass=:password";
		Query query = session.createQuery(hql);
		query.setParameter("username", uname);
		query.setParameter("password", password);

		@SuppressWarnings("unchecked")
		List<User> results = query.list();

		Iterator<User> it = results.iterator();

		if (it.hasNext()) {

			return true;
		} else {

			return false;
		}
	}

	public boolean InsertListing(Car c, HttpSession session1) {

		session = SessionUtility.GetSessionConnection();

		String uname = session1.getAttribute("user").toString();
		String hql = "FROM users.User where u_name =:username";
		Query query = session.createQuery(hql);
		query.setParameter("username", uname);
		User u = (User) query.list().get(0);

		Set<Car> set1 = u.getCars();
		set1.add(c);
		u.setCars(set1);

		session.save(c);
		session.save(u);

		SessionUtility.closeSession(null);

		return true;

	}

	public boolean updateuser(int userid,String utype, String mail, String fname, String lname, String phno, String addr, String state, String city)
	{
		session = SessionUtility.GetSessionConnection();
		
		String hql = "UPDATE user.User set u_type =:usertype and u_email=:useremail and u_firstname=:fname and u_lastname=:ulastname and u_phno=:userphno and u_address=:useraddress and state=:ustate and city=:ucity where uid =:unameval";
		Query query = session.createQuery(hql);
		query.setString("usertype",utype);
		query.setString("useremail",mail);
		query.setString("fname",fname);
		query.setString("ulastname",lname);
		query.setString("userphno",phno);
		query.setString("useraddress",addr);
		query.setString("ustate",state);
		query.setString("ucity",city);
		query.setInteger("unameval", userid);

		SessionUtility.closeSession(null);
		
		return true;
		
	}
}
