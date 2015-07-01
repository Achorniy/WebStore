package ua.project.chorniy.serviceImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.project.chorniy.dao.ProductDao;
import ua.project.chorniy.model.Product;
import ua.project.chorniy.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao dao;

	@Transactional
	public Iterable<Product> viewAllProducts() {
		return dao.findAll();
	}

	@Transactional
	public Product getProduct(Integer idProduct) {
		return dao.findOne(idProduct);
	}

	@Transactional
	public Iterable<Product> viewProducts(List<Product> products) {
		if(products.isEmpty())
			return products;
		List<Integer> params = new ArrayList<Integer>();
		for( Product product : products) {
			params.add(product.getIdProduct());
		}
		return 	dao.findAll(params);
	}

	@Transactional
	public List<Product> getProductsByPriceFilter(Integer priceFilter) {
		Iterable<Product> listOfAllProducts = dao.findAll();
			List<Product> filteredProducts = new ArrayList<Product>();
			  Iterator<Product> itr = listOfAllProducts.iterator();
				while(itr.hasNext()){
					Product p = (Product) itr.next();
						if(p.getPrice()==priceFilter){
							filteredProducts.add(p);
						}
					}
		return filteredProducts;
	}
}

	
	
	

