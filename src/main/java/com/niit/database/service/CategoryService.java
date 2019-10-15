package com.niit.database.service;



import java.util.List;
import java.util.Locale.Category;


import com.niit.database.model.category;


public interface CategoryService {
	void addCategory(category c);

public boolean update(Category c);
public List<Category> listCategory();
public boolean delete(int cid);
public Category getid(int c);



}