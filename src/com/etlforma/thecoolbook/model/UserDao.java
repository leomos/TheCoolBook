package com.etlforma.thecoolbook.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class UserDao implements Dao<User>, JdbcTemplateInterface {

	private JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public Boolean create(User entity) {
		String sql = "INSERT INTO user(email, password, first_name, last_name, is_admin) VALUES (?, ?, ?, ?, ?);";

		try {
			
			int counter = jdbcTemplate.update(sql, new Object[] { 
					entity.getEmail(),
					entity.getPassword(), 
					entity.getFirstName(),
					entity.getLastName(),
					entity.getIsAdmin()
			});
			
			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<User> read() {
		List<User> users = jdbcTemplate.query("SELECT * FROM user;", new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setFirstName(rs.getString("first_name"));
				user.setLastName(rs.getString("last_name"));
				user.setIsAdmin(rs.getBoolean("is_admin"));
				
				return user;
			}

		});

		return users;
	}

	@Override
	public Boolean update(User entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get(Integer id) {
		List<User> users = jdbcTemplate.query("SELECT * FROM user WHERE id="+id+";", new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setFirstName(rs.getString("first_name"));
				user.setLastName(rs.getString("last_name"));
				user.setIsAdmin(rs.getBoolean("is_admin"));
				
				return user;
			}

		});

		return users.get(0);
	}

}
