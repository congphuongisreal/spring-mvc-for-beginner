package com.springmvc.controller;

import com.springmvc.model.Customer;
import com.springmvc.model.User;
import com.springmvc.service.CustomerService;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String sayCustomer(Model model) {
		model.addAttribute("customer", new Customer());
		model.addAttribute("active_customer", "class=\"mm-active\"");
		model.addAttribute("customers", customerService.getAllCustomer());
		return "customer";
	}


	@RequestMapping(value = "/customer/add",method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute(value = "customer") Customer customer) {
		customerService.addCustomer(customer);
		return "redirect:/customer";
	}

	@RequestMapping(value = "/customer/getId/{customerId}",method = RequestMethod.GET)
	public String getCustomerId(@PathVariable(value = "customerId") long customerId,Model model) {
		Customer customer = customerService.getCustomerById(customerId);
		model.addAttribute("active_customer","\"class=\\\"mm-active\\\"\"");
		model.addAttribute("customerObj",customer);
		model.addAttribute("check",1);
		return "edit_customer";
	}

	@RequestMapping(value = "/customer/delete/{customerId}")
	public String deleteCustomer(@PathVariable(value = "customerId") long customerId) {
		customerService.deleteCustomer(customerId);
		return "redirect:/customer";
	}

	@RequestMapping(value = "/customer/update", method = RequestMethod.POST)
	public String updateCustomer(@ModelAttribute(value = "customerObj") Customer customer) {
		customerService.updateCustomer(customer);
		return "redirect:/customer";
	}

	@RequestMapping(value = "/customer/info/{customerId}",method = RequestMethod.GET)
	public String infoCustomer(@PathVariable(value = "customerId")long customerId, Model model){
		Customer customer = customerService.getCustomerById(customerId);
		model.addAttribute("customerObj",customer);
		model.addAttribute("active_customer","\"class=\\\"mm-active\\\"\"");
		model.addAttribute("readonly","true");
		return "edit_customer";
	}
}
