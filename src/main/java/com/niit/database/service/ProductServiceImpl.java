package com.niit.database.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.database.dao.ProductDAO;
import com.niit.database.model.Product;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;
	
	public void setProductDAO(ProductDAO productDAO){
		this.productDAO=productDAO;
	}
	
	@Transactional
	public void addProduct(Product p){
		System.out.println("service");
		productDAO.addProduct(p);
	}
	@Transactional
	public List<Product> listProduct() {
		
		return productDAO.listProduct();
	}
	
	@Transactional
	public boolean update(Product p)
	{
		return productDAO.update(p);
	}

		


		


	@Transactional
		public boolean delete(int pid) {
			
			return productDAO.delete(pid);
}

		@Transactional
		public Product getid(int p) {
			return productDAO.getid(p);
		}
		}
	



