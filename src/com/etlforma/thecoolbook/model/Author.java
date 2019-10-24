package com.etlforma.thecoolbook.model;

import org.springframework.format.annotation.DateTimeFormat;

public class Author {
	
	private Integer id;
	
	private String firstName;
	
	private String lastName;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")	
	private String birthDay;
	
	private String birthPlace;
	
	private String image;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}