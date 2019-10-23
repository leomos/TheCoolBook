package com.etlforma.thecoolbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Events {

	@RequestMapping("/events")
	public ModelAndView events() {
 
		String message = "Ecco gli eventi!";
		return new ModelAndView("events", "message", message);	} //il primo "message" è il nome dell'oggetto e il secondo message è l'oggetto
																//il "welcome" dove va l'oggetto
}
