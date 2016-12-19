package categorymaster;

import org.springframework.stereotype.Component;

@Component
public class CarSearch {
	
	private String car_type;
	private String location;
	private String car_status;
	private String car_make;
	private String car_engine_type;
	private String price_min;
	private String price_max;
	private int total_result_count;
	private int user_id;
	

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getTotal_result_count() {
		return total_result_count;
	}
	public void setTotal_result_count(int i) {
		this.total_result_count = i;
	}
	public String getPrice_min() {
		return price_min;
	}
	public void setPrice_min(String price_min) {
		this.price_min = price_min;
	}
	public String getPrice_max() {
		return price_max;
	}
	public void setPrice_max(String price_max) {
		this.price_max = price_max;
	}
	private String price_range;
	
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getCar_make() {
		return car_make;
	}
	public void setCar_make(String car_make) {
		this.car_make = car_make;
	}
	public String getCar_engine_type() {
		return car_engine_type;
	}
	public void setCar_engine_type(String car_engine_type) {
		this.car_engine_type = car_engine_type;
	}
	public String getCar_status() {
		return car_status;
	}
	public void setCar_status(String car_status) {
		this.car_status = car_status;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPrice_range() {
		return price_range;
	}
	public void setPrice_range(String price_range) {
		this.price_range = price_range;
	}
 

}
