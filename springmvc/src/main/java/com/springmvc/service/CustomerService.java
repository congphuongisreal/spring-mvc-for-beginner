package com.springmvc.service;

import com.springmvc.model.Customer;
import com.springmvc.model.User;

import java.util.List;

public interface CustomerService {

	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomer();

	public void deleteCustomer(long customer);

	public void updateCustomer(Customer customer);

	public Customer getCustomerById(long customerId);
}
