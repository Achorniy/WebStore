package ua.project.chorniy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.project.chorniy.model.Customer;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("greeting", "Welcome to Web Store!");
		model.addAttribute("tagline", "Please registrate!");
		
		return "forward:/welcome/greeting";
	}

	@RequestMapping(value = "/welcome/greeting")
	public String greeting() {
		return "welcome";
	}
	
	@RequestMapping("/cogratulation")
	public String congratulation(Model model){
		model.addAttribute("congrate",  "congratulationsPage");
		return "congratulationsPage";
	}
}



