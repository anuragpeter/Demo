package com.niit.database.dao;

import java.util.List;
import java.util.Locale.Category;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.database.model.Product;
@Repository
public class CategoryDAOImpl implements CategoryDAO {
SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void addCategory(Category c) {
		Session session=this.sessionFactory.getCurrentSession();
		c.setCid(c.getName());
		session.persist(c);
	}

	public boolean update(Category c) {
		try{
			sessionFactory.getCurrentSession().update(c);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}

	public boolean delete(int cid) {
		try{
			sessionFactory.getCurrentSession().delete(getid(cid));
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	
	}

	public Category getid(int c) {
		Category crod = (Category) sessionFactory.getCurrentSession().get(Category.class, new Integer(c));
		
		return crod;
		
	}

	public List<Category> listCategory() {
		System.out.println("in dao list [category");
		Session aa = sessionFactory.getCurrentSession();
		Query x=aa.createQuery("from category");
		@SuppressWarnings("unchecked")
		List<Category>z=(List<Category>)x.list();
	    return z;
	}

	public void addCategory(CategoryDAO c) {
		// TODO Auto-generated method stub
		
	}

	

	
		
	}


