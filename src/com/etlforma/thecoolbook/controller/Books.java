package com.etlforma.thecoolbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Books {

	@RequestMapping("/books")
	public ModelAndView books() {
 
		String mannaggia = "Books!";
		return new ModelAndView("books", "boooooks", mannaggia);
	}
}
