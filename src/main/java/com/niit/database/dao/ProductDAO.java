package com.niit.database.dao;

import java.util.List;

import com.niit.database.model.Product;

public interface ProductDAO {
	void addProduct(Product p);
	public List<Product> listProduct();
	public boolean update(Product p);
	public boolean delete(int pid);
	public Product getid(int p);
	
}
