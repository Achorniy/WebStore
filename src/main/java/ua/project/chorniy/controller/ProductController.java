package ua.project.chorniy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ua.project.chorniy.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	@RequestMapping(value="/get/product", method=RequestMethod.GET)
	private ModelAndView viewAllProducts(){
		ModelAndView mav = new ModelAndView("ListOfProducts");
		mav.addObject("products", service.viewAllProducts());
		return mav;
	}
	
	@RequestMapping(value="/get/product{id}", method=RequestMethod.GET)
	public ModelAndView getProduct(@PathVariable int id){
		ModelAndView mav= new ModelAndView("separateproduct");
		mav.addObject("product", service.getProduct(id));
		return mav;
		
	}
}
