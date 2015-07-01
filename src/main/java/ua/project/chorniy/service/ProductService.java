package ua.project.chorniy.service;

import java.util.List;


import ua.project.chorniy.model.Product;

public interface ProductService {
	public Iterable<Product> viewAllProducts();
	public Product getProduct(Integer idProduct);
	public Iterable<Product> viewProducts(List<Product> products);
	public List<Product> getProductsByPriceFilter(Integer priceFilter);
	

}
