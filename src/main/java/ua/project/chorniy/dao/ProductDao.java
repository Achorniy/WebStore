package ua.project.chorniy.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import ua.project.chorniy.model.Product;

public interface ProductDao extends PagingAndSortingRepository<Product, Integer> {
	
}
