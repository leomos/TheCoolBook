package com.etlforma.thecoolbook.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class BookDao implements Dao<Book>, JdbcTemplateInterface {

	private JdbcTemplate jdbcTemplate;
	
	@Override
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public Boolean create(Book book) {
		String sql = "INSERT INTO book(title, num_pages, genre, isbn) VALUES (?, ?, ?, ?);";

		try {
			
			int counter = jdbcTemplate.update(sql, new Object[] {
					book.getTitle(),
					book.getNumPages(), 
					book.getGenre(),
					book.getIsbn()
			});
			
			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Book> read() {
		List<Book> books = jdbcTemplate.query("SELECT * FROM book;", new RowMapper<Book>() {

			@Override
			public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setTitle(rs.getString("title"));
				book.setNumPages(rs.getInt("num_pages"));
				book.setGenre(rs.getString("genre"));
				book.setIsbn(rs.getString("isbn"));
				return book;
			}

		});

		return books;
	}

	@Override
	public Boolean update(Book book) {
		String sql = "UPDATE book SET title=?, num_pages=?, genre=?, isbn=? WHERE id=?;";
	    
            try {
			
			int counter = jdbcTemplate.update(sql, new Object[] {
					book.getTitle(),
					book.getNumPages(), 
					book.getGenre(),
					book.getIsbn(),
					book.getId()
			});
			
			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}


	@Override
	public Boolean delete(Integer id) {
		String sql = "DELETE FROM book WHERE id="+id+";";

		try {
			
			int counter = jdbcTemplate.update(sql);
			return counter > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Book get(Integer id) {
		List<Book> books = jdbcTemplate.query("SELECT * FROM book WHERE id="+id+";", new RowMapper<Book>() {

			@Override
			public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setTitle(rs.getString("title"));
				book.setNumPages(rs.getInt("num_pages"));
				book.setGenre(rs.getString("genre"));
				book.setIsbn(rs.getString("isbn"));
				return book;
			}

		});

		return books.get(0);
	}

}
