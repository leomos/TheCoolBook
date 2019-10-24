package com.etlforma.thecoolbook.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EventDao implements Dao<Event>, JdbcTemplateInterface {

	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public Boolean create(Event entity) {
		String sql = "INSERT INTO Event(id, name, place, datetime) VALUES (?, ?, ?, ?);";

		try {

			int counter = jdbcTemplate.update(sql, new Object[] { 
					entity.getIdEvent(), 
					entity.getEventName(), 
					entity.getEventLocation(), 
					entity.getEventDate() 
			});

			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Event> read() {
		List<Event> events = jdbcTemplate.query("SELECT * FROM event;", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event event = new Event();

				event.setIdEvent(rs.getInt("id"));
				event.setEventName(rs.getString("name"));
				event.setEventLocation(rs.getString("place"));
				event.setEventDate(rs.getDate("datetime"));

				return event;
			}

		});

		return events;
	}

//	@Override
//	public Boolean update(Event event) {
//		String sql = "UPDATE event SET name=?, place=?, datetime=?;";
//	    
//            try {
//			
//			int counter = jdbcTemplate.update(sql, new Object[] {
//					event.getEventName(),
//					event.getEventLocation(), 
//					event.getEventDate()
//			});
//			
//			return counter > 0;
//
//		} catch (Exception e) {
//			e.printStackTrace();
//			return false;
//		}
//	}
	
	public Boolean update(Event event){    
	    String sql="update event set name='"+event.getEventName()+"', place='"+event.getEventLocation()+"',datetime='"+event.getEventDateString()+"' where id="+event.getIdEvent()+"";    
	    
	    int c=jdbcTemplate.update(sql);
	    return c>0;    
	}    

	@Override
	public Boolean delete(Integer idEvent) {
		String sql="delete from event where id="+idEvent+""; 
		
		int c=jdbcTemplate.update(sql);
	    return c>0;    
	}

	@Override
	public Event get(Integer idEvent) {
		List<Event> events = jdbcTemplate.query("SELECT * FROM event WHERE id=" + idEvent + ";", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event event = new Event();

				event.setIdEvent(rs.getInt("id"));
				event.setEventName(rs.getString("name"));
				event.setEventLocation(rs.getString("place"));
				event.setEventDate(rs.getDate("datetime"));

				return event;
			}

		});

		return events.get(0);
	}

}
