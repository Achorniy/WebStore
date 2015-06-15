package ua.project.chorniy.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.project.chorniy.dao.CustomerDao;
import ua.project.chorniy.model.Customer;
import ua.project.chorniy.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao dao;
	
	@Transactional
	public void addCustomer(Customer customer) {
		dao.save(customer);
	}
	
	@Transactional
	public void deleteCustomer(Integer id) {
		dao.delete(id);
	}
	
	@Transactional
	public Iterable<Customer> viewAllCustomers() {
		return dao.findAll();
	}

	public Customer getCustomer(Integer id) {
		return dao.findOne(id);
	}
}
