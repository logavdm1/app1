package categorymaster;

import java.util.Set;
import org.springframework.stereotype.Component;

@Component
public class Car{

	private int car_id;
	private String car_status;
	private String car_make;
	private String car_model;
	private String Kilometres;
	private String Body_Type;
	private String Style;
	private String Engine;
	private String Transmission;
	private String Exterior_Color;
	private String Interior_color;
	private String Passangers_Doors;
	private String Fuel_Type;
	private String Mileage;
	private String post_day;
	private String post_month;
	private String post_year;
	private String location;
	private String year_model;
	private String estimated_price;
	private String tumb_img;
	private Set<CarImgs> car_imgs;
	private Set<ExtraFeatures> extra_features;
	
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	
	public String getCar_status() {
		return car_status;
	}
	public void setCar_status(String car_status) {
		this.car_status = car_status;
	}
	public String getCar_make() {
		return car_make;
	}
	public void setCar_make(String car_make) {
		this.car_make = car_make;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public String getKilometres() {
		return Kilometres;
	}
	public void setKilometres(String kilometres) {
		Kilometres = kilometres;
	}
	public String getBody_Type() {
		return Body_Type;
	}
	public void setBody_Type(String body_Type) {
		Body_Type = body_Type;
	}
	public String getStyle() {
		return Style;
	}
	public void setStyle(String style) {
		Style = style;
	}
	public String getEngine() {
		return Engine;
	}
	public void setEngine(String engine) {
		Engine = engine;
	}
	public String getTransmission() {
		return Transmission;
	}
	public void setTransmission(String transmission) {
		Transmission = transmission;
	}
	public String getExterior_Color() {
		return Exterior_Color;
	}
	public void setExterior_Color(String exterior_Color) {
		Exterior_Color = exterior_Color;
	}
	public String getInterior_color() {
		return Interior_color;
	}
	public void setInterior_color(String interior_color) {
		Interior_color = interior_color;
	}
	public String getPassangers_Doors() {
		return Passangers_Doors;
	}
	public void setPassangers_Doors(String passangers_Doors) {
		Passangers_Doors = passangers_Doors;
	}
	public String getFuel_Type() {
		return Fuel_Type;
	}
	public void setFuel_Type(String fuel_Type) {
		Fuel_Type = fuel_Type;
	}
	public String getMileage() {
		return Mileage;
	}
	public void setMileage(String mileage) {
		Mileage = mileage;
	}
	public Set<CarImgs> getCar_imgs() {
		return car_imgs;
	}
	public void setCar_imgs(Set<CarImgs> car_imgs) {
		this.car_imgs = car_imgs;
	}
	
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getYear_model() {
		return year_model;
	}
	public void setYear_model(String year_model) {
		this.year_model = year_model;
	}
	public String getPost_day() {
		return post_day;
	}
	public void setPost_day(String post_day) {
		this.post_day = post_day;
	}
	public String getPost_month() {
		return post_month;
	}
	public void setPost_month(String post_month) {
		this.post_month = post_month;
	}
	public String getPost_year() {
		return post_year;
	}
	public void setPost_year(String post_year) {
		this.post_year = post_year;
	}
	public String getEstimated_price() {
		return estimated_price;
	}
	public void setEstimated_price(String estimated_price) {
		this.estimated_price = estimated_price;
	}

	public String getTumb_img() {
		return tumb_img;
	}
	public void setTumb_img(String tumb_img) {
		this.tumb_img = tumb_img;
	}
	public Set<ExtraFeatures> getExtra_features() {
		return extra_features;
	}
	public void setExtra_features(Set<ExtraFeatures> extra_features) {
		this.extra_features = extra_features;
	}
	
}
