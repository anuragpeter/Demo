package com.niit.database.dao;

import java.util.List;
import java.util.Locale.Category;

public interface CategoryDAO {
	void addCategory(Category c);

	public boolean update(Category c);
	public List<Category> listCategory();
	public boolean delete(int cid);
	public Category getid(int c);

	
	
}
