package com.etlforma.thecoolbook.model;

public class Book {
	
	private Integer id;
	
	private String title;
	
	private Integer numPages;
	
	private String genre;
	
	private String isbn;
	
	private String URLImage;

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

	public Integer getNumPages() {
		return numPages;
	}

	public void setNumPages(Integer numPages) {
		this.numPages = numPages;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public String getURLImage() {
		return URLImage; 
	}
	
	public void setURLImage(String URLImage) {
		this.URLImage = URLImage; 
	}
}