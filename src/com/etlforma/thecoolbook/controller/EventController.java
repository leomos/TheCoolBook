package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Dao;
import com.etlforma.thecoolbook.model.Event;
import com.etlforma.thecoolbook.model.EventDao;

@Controller
public class EventController {

	@Autowired
	private Dao<Event> eventDao;

	@RequestMapping(value = "/event/read")
	public ModelAndView readEvent(ModelAndView model) throws IOException {
		List<Event> events = eventDao.read();
		model.addObject("events", events);
		model.setViewName("event_read");

		return model;
	}

	@RequestMapping(value = "/event/{idEvent}")
	public ModelAndView getEvent(@PathVariable Integer idEvent, ModelAndView model) {
		Event event = eventDao.get(idEvent);
		model.addObject("event", event);
		model.setViewName("event_get");

		return model;
	}

}
