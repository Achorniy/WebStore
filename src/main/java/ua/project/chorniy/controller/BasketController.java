package ua.project.chorniy.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.project.chorniy.model.Basket;
import ua.project.chorniy.model.Customer;
import ua.project.chorniy.model.Order;
import ua.project.chorniy.service.CustomerService;
import ua.project.chorniy.service.OrderService;
import ua.project.chorniy.service.ProductService;

@Controller
@RequestMapping("/basket")
public class BasketController {
	
	@Autowired
	private ProductService productService;	
	
	@Autowired
	private OrderService serviceOrder;
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="/add/{id}")
	public String addProductToBasket(@PathVariable int id, HttpSession session ) {
		Basket basket = getBasket(session);
		basket.addProductToBasket(productService.getProduct(id));
		session.setAttribute("basket", basket);
		return "redirect:/get/product";
	}
	
	@RequestMapping(value="/delete/{id}")
	public String deleteProductFromBasket(@PathVariable int id, HttpSession session){
		Basket basket = getBasket(session);
		basket.deleteProductFromBasket(id);
		session.setAttribute("basket", basket);
		return "redirect:/get/product";
	}
	
	@RequestMapping(value="/products")
	public String getProducts(Model model, HttpSession session){
		Basket basket = getBasket(session);
		model.addAttribute("product", productService.viewProducts(basket.getProducts()));
		return "productsInBasket";
	}

	
	@RequestMapping("/orderPage") 
	public String orderPage( Model model, Customer customer) {
		model.addAttribute("Order", new Order());
		model.addAttribute("customer", customer.getLogin());
		return "orderPage";
	}
	
	@RequestMapping(value="/order", method = RequestMethod.POST)
	public String orderProductsFromBusket(@ModelAttribute("Order") Order order, HttpSession session ){
		Basket basket = getBasket(session); 
		order.setOderedProducts(basket.getProducts());
		serviceOrder.addOrder(order);
		session.setAttribute("basket", basket);
		basket.clearBusket();
		return "congratulationsPage";
	}
	
	
	private Basket getBasket(HttpSession session) {
		Basket basket = (Basket) session.getAttribute("basket");
		if( basket == null )
			basket = new Basket();
		return basket;
	}
	
}
