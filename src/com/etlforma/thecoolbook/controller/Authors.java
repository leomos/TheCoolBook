package com.etlforma.thecoolbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Authors {

	@RequestMapping("/authors")
	public ModelAndView authors() {
 
		String message = "Ecco i tuoi autori";
		return new ModelAndView("authors", "message", message);
	}
}

