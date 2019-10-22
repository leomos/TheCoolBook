package com.etlforma.thecoolbook.model;

public class Book {
	
	private Integer id;
	
	private String title;
	
	private Integer num_pages;
	
	private String genre;
	
	private String isbn;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getNum_pages() {
		return num_pages;
	}

	public void setNum_pages(Integer num_pages) {
		this.num_pages = num_pages;
	}

	public String getGenre() {
		return genre;
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

	public Boolean getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}