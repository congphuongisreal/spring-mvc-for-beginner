package com.springmvc.dao;

import com.springmvc.model.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getAllCustomer() {
		Session session = sessionFactory.openSession();
		List<Customer> customers = session.createQuery("from Customer").list();
		session.flush();
		session.close();
		return customers;
	}

	@Override
	public void deleteCustomer(long customerId) {
		Session session = sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class,customerId);
		session.delete(customer);
		session.flush();
		session.close();
	}

	@Override
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		session.save(customer);
		session.close();
	}

	@Override
	public void updateCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		session.update(customer);
		session.flush();
		session.close();
	}

	@Override
	public Customer getCustomerById(long customerId){
		Session session = sessionFactory.openSession();
		Customer customer = (Customer) session.get(Customer.class,customerId);
		session.close();
		return customer;
	}
}
