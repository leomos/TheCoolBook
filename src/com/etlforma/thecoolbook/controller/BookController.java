package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		model.setViewName("book_read");//nome del file jsp senza estensione


		return model;

	}

	
	@RequestMapping(value = "/book/create", method = RequestMethod.POST)
	public String createBook(@ModelAttribute Book book) {
		bookDao.create(book);
		return "book_create";
	}
	
	//delete
	@RequestMapping(value = "/book/read", method = RequestMethod.POST)
	public String deleteBook(@ModelAttribute Book book, @PathVariable Integer id) {
		book.setId(id);
		bookDao.delete(book.getId());
		return "book_read";
	}
	
	@RequestMapping(value = "/book/create", method = RequestMethod.GET)
	public ModelAndView createBook(ModelAndView model, Book book) {
		model.addObject("book", book);
		model.setViewName("book_create");//nome del file jsp senza estensione

		return model;
	}
	
	@RequestMapping(value = "/book/{id}")
	public ModelAndView getBook(@PathVariable Integer id, ModelAndView model) {
		Book book = bookDao.get(id);
		model.addObject("book", book);
		model.setViewName("book_get");

		return model;
	}

	@RequestMapping(value = "/book/{id}/update", method = RequestMethod.GET)
	public ModelAndView updateBook(@PathVariable Integer id, ModelAndView model) {
		Book book = bookDao.get(id);
		model.addObject("book", book);
		model.setViewName("book_update");//nome del file jsp senza estensione

		return model;
	}
//
	@RequestMapping(value = "/book/{id}/update", method = RequestMethod.POST)
	public String updateBook(@ModelAttribute Book book, @PathVariable Integer id) {
		book.setId(id);
		bookDao.update(book);		
//		System.out.println(book.getURLImage());
//		boolean resp = 
//		bookModel.addAttribute("id", id);
//		if (resp == true) {
//			bookModel.addAttribute("msg", "User with id : " + id + " updated successfully.");
//			bookModel.addAttribute("bookDetail", bookDao.book.get());
//			return "users";
//		} else {
//			bookModel.addAttribute("msg", "User with id : " + id + " updation failed.");
//			bookModel.addAttribute("bookDetail", userDetailService.getUserDetail(id));
//			return "update";
		return "book_update";
	}
}