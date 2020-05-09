package com.springmvc.dao;

import com.springmvc.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getAllProduct() {
		Session session = sessionFactory.openSession();
		List<Product> products = session.createQuery("from Product").list();
		session.flush();
		session.close();
		return products;
	}

	@Override
	public Product getProductById(long productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class,productId);
		session.close();
		return product;
	}

	@Override
	public void deleteProductId(long productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class,productId);
		session.delete(product);
		session.flush();
		session.close();
	}

	@Override
	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.save(product);
		session.close();
	}

	@Override
	public void updateProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		session.close();
	}
}
