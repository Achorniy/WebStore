package ua.project.chorniy.dao;

import org.springframework.data.repository.CrudRepository;

import ua.project.chorniy.model.Product;

public interface ProductDao extends CrudRepository<Product, Integer>{

}
