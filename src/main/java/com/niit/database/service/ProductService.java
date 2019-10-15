package com.niit.database.service;

import java.util.List;

import com.niit.database.model.Product;
import com.niit.database.model.User;

public interface ProductService {
	void addProduct(Product p);
	public List<Product> listProduct();
	public boolean update(Product p);
	public boolean delete(int pid);
	public Product getid(int p);
	
}

