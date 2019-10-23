package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Book;
import com.etlforma.thecoolbook.model.Dao;

@Controller
public class BookController {
	
	@Autowired
	private Dao<Book> bookDao;
	
	@RequestMapping(value = "/book/read")
	public ModelAndView readBook(ModelAndView model) throws IOException {
		List<Book> books = bookDao.read();
		model.addObject("books", books);
		model.setViewName("book_read");

		return model;
		
	}
	
	@RequestMapping(value = "/book/{id}")
	public ModelAndView getBook(@PathVariable Integer id, ModelAndView model) {
		Book book = bookDao.get(id);
		model.addObject("book", book);
		model.setViewName("book_get");
		
		return model;
	}
	
	@RequestMapping(value = "/book/{id}/update")
	public ModelAndView updateBook(@PathVariable Integer id, ModelAndView model) {
		Book book = bookDao.get(id);
		model.addObject("book", book);
		model.setViewName("book_update");
		
		return model;
	}
	
}
