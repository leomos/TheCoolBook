package com.etlforma.thecoolbook.model;

import org.springframework.jdbc.core.JdbcTemplate;

public interface JdbcTemplateInterface {
	
	public JdbcTemplate getJdbcTemplate();
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate);
	
}
