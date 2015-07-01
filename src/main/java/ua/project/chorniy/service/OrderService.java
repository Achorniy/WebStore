package ua.project.chorniy.service;

import ua.project.chorniy.model.Order;

public interface OrderService {
	public void addOrder(Order order);
	public void deleteOrder(Integer id);
	public Order getOrder(Integer id);
}
