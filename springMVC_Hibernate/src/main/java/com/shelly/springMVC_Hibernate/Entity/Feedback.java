package com.shelly.springMVC_Hibernate.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/*import jakarta.persistence.Entity;
import jakarta.persistence.Id;*/

@Entity
@Table(schema="hibspring")
public class Feedback {
	private String name;
    @Id
	private String email;
	private int regarding;
	private String code;
	private int rating;
	private String message;


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public int getRegarding() {
		return regarding;
	}

	public void setRegarding(int regarding) {
		this.regarding = regarding;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Feedback [name=" + name + ", email=" + email + ", regarding=" + regarding + ", code=" + code
				+ ", rating=" + rating + ", message=" + message + "]";
	}

	

}
