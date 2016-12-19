package customtags;


import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import categorymaster.Car;

@SuppressWarnings("serial")
public class GetCarSessionValues extends TagSupport{

	String parameter;

	public String getParameter() {
		return parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}



	public int doEndTag() throws JspException {
		
		JspWriter out=pageContext.getOut();
		
			Car c=(Car) pageContext.getSession().getAttribute("caradd");
			
			try{
				
				switch(parameter)
				{
				
				case "car_status":
					out.print("<b>"+c.getCar_status()+"</b>");
				break;
				case "car_make":
					out.print("<b>"+c.getCar_make()+"</b>");
				break;
				case "car_model":
					out.print("<b>"+c.getCar_model()+"</b>");
				break;
				case "Kilometres":
					out.print("<b>"+c.getKilometres()+"</b>");
				break;
				case "Body_Type":
					out.print("<b>"+c.getBody_Type()+"</b>");
				break;
				case "Engine":
					out.print("<b>"+c.getEngine()+"</b>");
				break;
				case "Transmission":
					out.print("<b>"+c.getTransmission()+"</b>");
				break;
				case "Exterior_Color":
					out.print("<b>"+c.getExterior_Color()+"</b>");
				break;
				case "Interior_color":
					out.print("<b>"+c.getInterior_color()+"</b>");
				break;
				case "Passangers":
					out.print("<b>"+c.getPassangers_Doors()+"</b>");
				break;
				case "Fuel_Type":
					out.print("<b>"+c.getFuel_Type()+"</b>");
				break;
				case "Mileage":
					out.print("<b>"+c.getMileage()+"</b>");
				break;
				case "location":
					out.print("<b>"+c.getLocation()+"</b>");
				break;
				case "year_model":
					out.print("<b>"+c.getYear_model()+"</b>");
				break;
				case "estimated_price":
					out.print("<b>"+c.getEstimated_price()+"</b>");
				break;
				case "tumb_img":
					out.print("<b>"+c.getEstimated_price()+"</b>");
				break;
				
				default:
					out.print("<b>Invalid Selection</b>");
				break;
				
				}
				
			}catch(Exception e){
				
			}
					
		return super.doEndTag();
	}
	
	
}
