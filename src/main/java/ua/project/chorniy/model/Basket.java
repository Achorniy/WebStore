package ua.project.chorniy.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Basket {
	private Map<Integer,Product> products;
	
	public Basket() {
		products = new HashMap<Integer, Product>();
	}

	
	public void addProductToBasket(Product product){
		products.put(product.getIdProduct(), product);
		
	}
	
	public void deleteProductFromBasket(int id){
		products.remove(id);
	}
	
	public void clearBusket(){
		products = new HashMap<Integer,Product>();
	}
	
	public List<Product> getProducts(){
		return new ArrayList<Product>(products.values());
	}
}

