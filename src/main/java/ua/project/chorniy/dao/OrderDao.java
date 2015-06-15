package ua.project.chorniy.dao;

import org.springframework.data.repository.CrudRepository;

import ua.project.chorniy.model.Order;

public interface OrderDao extends CrudRepository<Order, Integer>{

}
