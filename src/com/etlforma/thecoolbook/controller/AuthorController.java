package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Dao;
import com.etlforma.thecoolbook.model.Author;

@Controller
public class AuthorController {
	
	@Autowired
	private Dao<Author> authorDao;
	
	@RequestMapping(value = "/author/read")
	public ModelAndView readAuthor(ModelAndView model) throws IOException {
		List<Author> authors = authorDao.read();
		model.addObject("authors", authors);
		model.setViewName("author_read");

		return model;
	}
	
	@RequestMapping(value = "/author/{id}")
	public ModelAndView getAuthor(@PathVariable Integer id, ModelAndView model) {
		Author author = authorDao.get(id);
		model.addObject("author", author);
		model.setViewName("author_get");
		
		return model;
	}
	
}
