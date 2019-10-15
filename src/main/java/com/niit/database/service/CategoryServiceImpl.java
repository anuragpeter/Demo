package com.niit.database.service;

import java.util.List;
import java.util.Locale.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.database.dao.CategoryDAO;
import com.niit.database.model.category;


@Service
public class CategoryServiceImpl implements CategoryService {
@Autowired
private CategoryDAO categoryDAO;
	
	
	public void setCategoryDAO(CategoryDAO categoryDAO) {
	this.categoryDAO = categoryDAO;
}


	@Transactional
	public void addCategory(Category c) {
		System.out.println("category");
		categoryDAO.addCategory(c);
	}

	@Transactional
	public boolean update(Category c) {
		return categoryDAO.update(c);
		
	}

	@Transactional
	public boolean delete(int cid) {
		
		return categoryDAO.delete(cid);
		
	}

	@Transactional
	public Category getid(int c) {
		
		return categoryDAO.getid(c);
		
	}

	@Transactional
	public List<Category> listCategory() {
		return categoryDAO.listCategory();
	}


	public void addCategory(category c) {
		// TODO Auto-generated method stub
		
	}

}
