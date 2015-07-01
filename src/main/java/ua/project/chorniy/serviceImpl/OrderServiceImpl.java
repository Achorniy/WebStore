	package ua.project.chorniy.serviceImpl;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;
	
	import ua.project.chorniy.dao.OrderDao;
	import ua.project.chorniy.dao.ProductDao;
	import ua.project.chorniy.model.Order;
	import ua.project.chorniy.model.Product;
	import ua.project.chorniy.service.OrderService;
	
	import java.util.ArrayList;
	import java.util.List;
	
	@Service("orderService")
	public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDao dao;
	
	@Autowired
	private ProductDao productDao;
	
	@Transactional
	public void addOrder(Order order) {
	
	List<Product> products = new ArrayList<Product>();
	
	for(Product product: order.getOderedProducts()) {
	products.add(productDao.findOne(product.getIdProduct()));
	}
	order.setOderedProducts(products);
	
	dao.save(order);
	
	}
	
	@Transactional
	public void deleteOrder(Integer id) {
	dao.delete(id);
	}
	
	@Transactional
	public Order getOrder(Integer id) {
	return dao.findOne(id);
	}
}