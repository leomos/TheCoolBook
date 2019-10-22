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
		//String sql = "INSERT INTO Event(id_event, id_author, event_name, event_location, event_date) VALUES (?, ?, ?, ?, ?);";

		try {

			int counter = jdbcTemplate.update(sql, new Object[] { entity.getIdEvent() , entity.getIdAuthor(),
					entity.getEventName(), entity.getEventLocation(), entity.getEventDate() });

			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Event> read() {
		List<Event> Events = jdbcTemplate.query("SELECT * FROM Event;", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event Event = new Event();

				Event.setIdEvent(rs.getInt("id_event"));
				//Event.setIdAuthor(rs.getInt("id_author"));
				Event.setEventName(rs.getString("event_name"));
				Event.setEventLocation(rs.getString("event_location"));
				Event.setEventDate(rs.getDate("event_date"));

				return Event;
			}

		});

		return Events;
	}

	@Override
	public Boolean update(Event entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Event get(Integer idEvent) {
		List<Event> Events = jdbcTemplate.query("SELECT * FROM Event WHERE id=" + idEvent + ";", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event Event = new Event();

				Event.setIdEvent(rs.getInt("id_event"));
				//Event.setIdAuthor(rs.getInt("id_author"));
				Event.setEventName(rs.getString("event_name"));
				Event.setEventLocation(rs.getString("event_location"));
				Event.setEventDate(rs.getDate("event_date"));

				return Event;
			}

		});

		return Events.get(0);
	}

}
