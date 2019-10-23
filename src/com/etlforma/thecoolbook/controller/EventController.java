package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Dao;
import com.etlforma.thecoolbook.model.Event;
import com.etlforma.thecoolbook.model.EventDao;

@Controller
public class EventController {

	@Autowired
	private Dao<Event> eventDao;

	@RequestMapping("/event/eventform")    
    public String showform(Model m){    
        m.addAttribute("command", new Event());  
        return "event_form";   
    }   
	
    @RequestMapping(value="/event/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("event") Event event){   	
    	eventDao.create(event);    
        return "redirect:/event/read";
    }  
    
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
	
    @RequestMapping(value="/event/update/{idEvent}")    
    public String edit(@PathVariable int idEvent, Model model){    
    	Event event = eventDao.get(idEvent);   
        model.addAttribute("event",event);  
        return "event_update";    
    }    
    
    
	@RequestMapping(value = "/event/updatesave", method=RequestMethod.POST)
	public String updatesave(@ModelAttribute("event") Event event) {
		eventDao.update(event);    
        return "redirect:/event/read";
	}
	
//	@RequestMapping(value = "/event/{idEvent}/update", method=RequestMethod.POST)
//	public ModelAndView grabDataToUpdate(@PathVariable Integer idEvent, @RequestBody String eventName, @RequestBody String eventLocation, @RequestBody Date eventDate, ModelAndView model) {
//		System.out.println(eventName);
//		
//		Event eventToUpdate = eventDao.get(idEvent);
//		model.addObject("eventToUpdate", eventToUpdate);
//		model.setViewName("event_update");
//
//		return model;
//	}
	
	@RequestMapping(value = "/event/{idEvent}/updated", method=RequestMethod.GET)
	public ModelAndView getUpdateOrNot(@PathVariable Integer idEvent, ModelAndView model) {
		Event event = eventDao.get(idEvent);
		Boolean up = eventDao.update(event);
		int id = event.getIdEvent();
		model.addObject("up", up);
		model.addObject("id", id);
		model.setViewName("event_updated");

		return model;
	}
	
//	@RequestMapping(value = "/event/created")
//	public ModelAndView createEvent(@PathVariable Event created, ModelAndView model) {
//		Boolean createdOrNot = eventDao.create(created);
//		model.addObject("created", createdOrNot);
//		model.setViewName("event_created");
//
//		return model;
//	}
//	

}
