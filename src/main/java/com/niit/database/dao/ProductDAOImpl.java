package com.niit.database.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.database.model.Product;
@Repository
public class ProductDAOImpl  implements ProductDAO {
	@Autowired
private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void addProduct(Product p) {
		
		System.out.println("dao");
		Session ss=sessionFactory.getCurrentSession();
		ss.persist(p);
	}

	public List<Product> listProduct() {
		System.out.println("in dao list [prodicut");
		Session ss = sessionFactory.getCurrentSession();
		Query q=ss.createQuery("from Product");
		@SuppressWarnings("unchecked")
		List<Product>y=(List<Product>)q.list();
	    return y;
	}

	public boolean update(Product p)
	{
		try{
		sessionFactory.getCurrentSession().update(p);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	

		public boolean delete(int pid) {
			try{
				sessionFactory.getCurrentSession().delete(getid(pid));
				return true;
				}
				catch(Exception e)
				{
					e.printStackTrace();
					return false;
				}
		}


		public Product getid(int p) {
			Product prod = (Product) sessionFactory.getCurrentSession().get(Product.class, new Integer(p));
	
			return prod;
		}
		
		
		

		

	
}