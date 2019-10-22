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
		String sql = "INSERT INTO Event(id_event, event_name, event_location, event_date) VALUES (?, ?, ?, ?);";

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

				event.setIdEvent(rs.getInt("id_event"));
				event.setEventName(rs.getString("event_name"));
				event.setEventLocation(rs.getString("event_location"));
				event.setEventDate(rs.getDate("event_date"));

				return event;
			}

		});

		return events;
	}

	@Override
	public Boolean update(Event event) {
		String sql = "UPDATE event SET event_name=?, event_location=?, event_date=?;";
	    
            try {
			
			int counter = jdbcTemplate.update(sql, new Object[] {
					event.getEventName(),
					event.getEventLocation(), 
					event.getEventDate()
			});
			
			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Event get(Integer idEvent) {
		List<Event> events = jdbcTemplate.query("SELECT * FROM event WHERE id_event=" + idEvent + ";", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event event = new Event();

				event.setIdEvent(rs.getInt("id_event"));
				event.setEventName(rs.getString("event_name"));
				event.setEventLocation(rs.getString("event_location"));
				event.setEventDate(rs.getDate("event_date"));

				return event;
			}

		});

		return events.get(0);
	}

}
