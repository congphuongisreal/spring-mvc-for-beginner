package com.springmvc.dao;

import com.springmvc.model.Customer;

import java.util.List;

public interface CustomerDao {

	public List<Customer> getAllCustomer();

	public void deleteCustomer(long customer);

	public void addCustomer(Customer customer);

	public void updateCustomer(Customer customer);

	public Customer getCustomerById(long customerId);

}
