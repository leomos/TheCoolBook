package com.etlforma.thecoolbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Events {

	@RequestMapping("/events")
	public ModelAndView helloWorld() {
 
		String message = "Hello, events!";
		return new ModelAndView("events", "message", message);	} //il primo "message" � il nome dell'oggetto e il secondo message � l'oggetto
																//il "welcome" dove va l'oggetto
}
