package com.etlforma.thecoolbook.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class AuthorDao implements Dao<Author>, JdbcTemplateInterface {

	private JdbcTemplate jdbcTemplate;

	@Override
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public Boolean create(Author author) {
		String sql = "INSERT INTO author(first_name, last_name, birth_date, birth_place, image) VALUES (?, ?, ?, ?, ?);";

		try {

			int counter = jdbcTemplate.update(sql, new Object[] {
					author.getFirstName(), 
					author.getLastName(),
					author.getBirthDay(), 
					author.getBirthPlace(),
					author.getImage()
					});

			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Author> read() {
		List<Author> authors = jdbcTemplate.query("SELECT * FROM author;", new RowMapper<Author>() {

			@Override
			public Author mapRow(ResultSet rs, int rowNum) throws SQLException {
				Author author = new Author();

				author.setId(rs.getInt("id"));
				author.setFirstName(rs.getString("first_name"));
				author.setLastName(rs.getString("last_name"));
				author.setBirthDay(rs.getString("birth_date"));
				author.setBirthPlace(rs.getString("birth_place"));
				author.setImage(rs.getString("image"));

				return author;
			}

		});

		return authors;
	}

//	@Override
//	public Boolean update(Author author) {
//		String sql = "UPDATE author SET first_name=?, last_name=?, birth_date=?, birth_place=?, image=? WHERE id=?;";
//		try {
//			int counter = jdbcTemplate.update(sql, new Object[] {
//
//					author.getFirstName(), 
//					author.getLastName(), 
//					author.getBirthDay(),
//					author.getBirthPlace(),
//					author.getImage(),
//					author.getId() 
//					});
//			return counter > 0;
//
//		} catch (Exception e) {
//
//			e.printStackTrace();
//
//			return false;
//
//		}
//	}

	public Boolean update(Author author){    
	    String sql="update author set first_name='"+author.getFirstName()+"', last_name='"+author.getLastName()+"',birth_date='"+author.getBirthDay()+"', birth_place='"+author.getBirthPlace()+"' where id="+author.getId()+"";    
	    
	    int c=jdbcTemplate.update(sql);
	    return c>0;    
	}    
	
	
	
	@Override
	public Boolean delete(Integer id) {
		String sql = "DELETE FROM author WHERE id=" + id + ";";
		try {
			int counter = jdbcTemplate.update(sql);
			return counter > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Author get(Integer id) {
		List<Author> authors = jdbcTemplate.query("SELECT * FROM author WHERE id=" + id + ";", new RowMapper<Author>() {

			@Override
			public Author mapRow(ResultSet rs, int rowNum) throws SQLException {
				Author author = new Author();

				author.setId(rs.getInt("id"));
				author.setFirstName(rs.getString("first_name"));
				author.setLastName(rs.getString("last_name"));
				author.setBirthDay(rs.getString("birth_date"));
				author.setBirthPlace(rs.getString("birth_place"));
				author.setImage(rs.getString("image"));

				return author;
			}

		});

		return authors.get(0);
	}

}
