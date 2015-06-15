package ua.project.chorniy.dao;

import org.springframework.data.repository.CrudRepository;

import ua.project.chorniy.model.Customer;

public interface CustomerDao extends CrudRepository<Customer,Integer > {

}
