package com.etlforma.thecoolbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorld {

	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "Hello, world!";
		return new ModelAndView("welcome", "message", message);	} //il primo "message" � il nome dell'oggetto e il secondo message � l'oggetto
																//il "welcome" dove va l'oggetto
}
