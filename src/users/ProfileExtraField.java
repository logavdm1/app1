package users;

import org.springframework.stereotype.Component;

@Component
public class ProfileExtraField {
	
	private String updatevar;

	public String getUpdatevar() {
		return updatevar;
	}

	public void setUpdatevar(String updatevar) {
		this.updatevar = updatevar;
	}

}
