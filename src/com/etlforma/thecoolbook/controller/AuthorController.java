package com.etlforma.thecoolbook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.etlforma.thecoolbook.model.Dao;
import com.etlforma.thecoolbook.model.Event;
import com.etlforma.thecoolbook.model.Author;

@Controller
public class AuthorController {

	@Autowired
	private Dao<Author> authorDao;

	@RequestMapping(value = "/author/read")
	public ModelAndView readAuthor(ModelAndView model) throws IOException {
		List<Author> authors = authorDao.read();
		model.addObject("authors", authors);
		model.setViewName("author_read");

		return model;
	}

	@RequestMapping(value = "/author/{id}")
	public ModelAndView getAuthor(@PathVariable Integer id, ModelAndView model) {
		Author author = authorDao.get(id);
		model.addObject("author", author);
		model.setViewName("author_get");

		return model;
	}

	@RequestMapping(value = "/author/{id}/update", method = RequestMethod.GET)

	public ModelAndView updateAuthor(@PathVariable Integer id, ModelAndView model) {
		Author author = authorDao.get(id);
		model.addObject("author", author);
		model.setViewName("author_update");

		return model;

	}

	@RequestMapping(value = "/author/{id}/update", method = RequestMethod.POST)

	public String updateAuthor(@ModelAttribute Author author, @PathVariable Integer id) {
		author.setId(id);
		authorDao.update(author);

		return "redirect:/author/read";

	}

	@RequestMapping("/author/create")
	public String showform(Model m) {
		m.addAttribute("command", new Author());
		return "author_create";
	}
	
    @RequestMapping(value="/author/save", method = RequestMethod.POST)    
    public String save(@ModelAttribute("author") Author author){   	
    	authorDao.create(author);    
        return "redirect:/author/read";
    }  
    
    @RequestMapping(value="/author/{id}/delete", method = RequestMethod.GET)    
    public String delete(@PathVariable Integer id){   	
    	authorDao.delete(id);    
        return "redirect:/author/read";
    }  
}
