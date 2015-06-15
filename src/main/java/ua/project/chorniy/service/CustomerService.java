package ua.project.chorniy.service;

import ua.project.chorniy.model.Customer;

public interface CustomerService {
	public void addCustomer(Customer customer);
	public void deleteCustomer(Integer id);
	public Iterable<Customer> viewAllCustomers();
	public Customer getCustomer(Integer id);
}
