package com.belljava.onlinecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.belljava.dao.CategoryDAO;
import com.belljava.dao.LoginDAO;
import com.belljava.daoimpl.CategoryDAOimpl;
import com.belljava.dto.Category;
import com.belljava.dto.Login;

@Controller
/*@ComponentScan("com.belljava")*/
public class MainPageController {
	
	
	@Autowired(required=true)
	public CategoryDAO categoryDAO;
	
	/*@Autowired(required=true)
	public LoginDAO loginDAO;*/
	
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		ModelAndView model= new ModelAndView("mainpage");
		model.addObject("title", "Home");
		
		//passing the list of categories
		model.addObject("categories", categoryDAO.list());
		model.addObject("userClickHome", true);
		
		
		return model;
		
	}
	@RequestMapping(value= {"/about"})
	public ModelAndView about() {
		ModelAndView model= new ModelAndView("mainpage");
		model.addObject("title", "About Us");
		model.addObject("userClickAbout", true);
		
		
		return model;
		
	}
	
	@RequestMapping(value= {"/contact"})
	public ModelAndView contact() {
		ModelAndView model= new ModelAndView("mainpage");
		model.addObject("title", "Contact");
		model.addObject("userClickContact", true);
		
		
		return model;
		
	}
	@RequestMapping(value= {"/login"}, method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView model= new ModelAndView("login");
		model.addObject("title", "Login");
		model.addObject("userClickLogin", true);
		
		
		return model;
		
	}
	/*@RequestMapping(value="/login", method=RequestMethod.POST)
	public String postlogin(ModelAndView model,@ModelAttribute Login log, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "login";
		}
		String user=log.getUserName();
		String pass=log.getPassword();
		System.out.println(user);
		System.out.println(pass);		
		String var2=loginDAO.processLogin(user,pass);		
		//model.addAttribute("login", var2);
		
		return "loginsuccess";
		
	}
	
	*/
	@RequestMapping(value= {"/register"}, method=RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView model= new ModelAndView("Registration");
		model.addObject("title", "rr");
		model.addObject("userClickSignUP", true);
		return model;
		
	}
	//Method to load all the products
	
	@RequestMapping(value= "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView model= new ModelAndView("mainpage");
		model.addObject("title", "All Products");		
		//passing the list of categories
		model.addObject("categories", categoryDAO.list());
		model.addObject("userClickAllProducts", true);	
		return model;	
	}	
	@RequestMapping(value= "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView model= new ModelAndView("mainpage");
		//categoryDAO to fetch a single category		
		Category category = null;		
		category= categoryDAO.get(id);
		model.addObject("title", category.getName());
		//passing the single category object
		model.addObject("category", category);		
		//passing the list of categories
		model.addObject("categories", categoryDAO.list());
		model.addObject("userClickCategoryProducts", true);
		return model;		
	}
	
}
