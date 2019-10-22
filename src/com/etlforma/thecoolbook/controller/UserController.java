package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Dao;
import com.etlforma.thecoolbook.model.User;
import com.etlforma.thecoolbook.model.UserDao;

@Controller
public class UserController {
	
	@Autowired
	private Dao<User> userDao;
	
	@RequestMapping(value = "/user/read")
	public ModelAndView readUser(ModelAndView model) throws IOException {
		List<User> users = userDao.read();
		model.addObject("users", users);
		model.setViewName("user_read");

		return model;
	}
	
	@RequestMapping(value = "/user/{id}")
	public ModelAndView getUser(@PathVariable Integer id, ModelAndView model) {
		User user = userDao.get(id);
		model.addObject("user", user);
		model.setViewName("user_get");
		
		return model;
	}
	
	@RequestMapping(value = "/user/{id}/update")
	public ModelAndView updateUser(@PathVariable Integer id, ModelAndView model) {
		User user = userDao.get(id);
		model.addObject("user", user);
		model.setViewName("user_update");
		
		return model;
	}
	
}
