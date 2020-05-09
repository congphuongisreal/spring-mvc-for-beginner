package com.springmvc.service;

import com.springmvc.dao.CustomerDao;
import com.springmvc.dao.UserDao;
import com.springmvc.model.Customer;
import com.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;

	@Override
	@Transactional
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}

	@Override
	@Transactional
	public List<Customer> getAllCustomer() {
		return customerDao.getAllCustomer();
	}

	@Override
	@Transactional
	public void deleteCustomer(long customer) {
		customerDao.deleteCustomer(customer);
	}

	@Override
	@Transactional
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
	}

	@Override
	@Transactional
	public Customer getCustomerById(long customerId) {
		return customerDao.getCustomerById(customerId);
	}

}
