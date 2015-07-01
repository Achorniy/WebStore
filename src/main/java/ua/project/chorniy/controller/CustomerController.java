package ua.project.chorniy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.project.chorniy.model.Customer;
import ua.project.chorniy.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService service;
	
	@RequestMapping(value="/registration", method=RequestMethod.GET)
	public String registration(Model model){
		model.addAttribute("customer", new Customer());
		return "registration";
	}
	
	@RequestMapping(value="/forvadToProducts", method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute("customer") Customer customer){
		service.addCustomer(customer);
		return "redirect:get/product";
	}
}
