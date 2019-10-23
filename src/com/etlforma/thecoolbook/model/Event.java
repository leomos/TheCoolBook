package com.etlforma.thecoolbook.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Event {

	private Integer idEvent;

	private String eventName;

	private String eventLocation;

	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date eventDate;

	public Integer getIdEvent() {
		return idEvent;
	}

	public void setIdEvent(Integer idEvent) {
		this.idEvent = idEvent;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventLocation() {
		return eventLocation;
	}

	public void setEventLocation(String eventLocation) {
		this.eventLocation = eventLocation;
	}

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

}