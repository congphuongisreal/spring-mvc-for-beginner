package com.springmvc.controller;

import com.springmvc.model.*;
import com.springmvc.service.DepartmentService;
import com.springmvc.service.EmployeeService;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private UserService userService;


	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public String sayEmployee(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("active_employee", "class=\"mm-active\"");
		model.addAttribute("employees", this.employeeService.getAllEmployee());
		return "employee";
	}

	@RequestMapping(value = "/employee/add", method = RequestMethod.POST)
	public String addEmployee(@Valid @ModelAttribute(value = "employee") Employee employee) {
		employeeService.addEmployee(employee);

		Role role = new Role("EMPLOYEE");
		User user = new User(employee.getEmail(), employee.getEmail(), role);

		userService.addUser(user);
		return "redirect:/employee";
	}

	@RequestMapping(value = "/employee/getId/{employeeId}", method = RequestMethod.GET)
	public ModelAndView getEmployeeId(@PathVariable(value = "employeeId") long employeeId) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		return new ModelAndView("edit_employee", "employeeObj", employee);
	}

	@RequestMapping(value = "/employee/update", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute(value = "employeeObj") Employee employee) {
		employeeService.updateEmployee(employee);
		return "redirect:/employee";
	}

	@RequestMapping(value = "/employee/delete/{employeeId}")
	public String deleteEmployee(@PathVariable(value = "employeeId") long employeeId) {
		employeeService.deleteEmployee(employeeId);
		return "redirect:/employee";
	}

	@RequestMapping(value = "/employee/info/{employeeId}", method = RequestMethod.GET)
	public String infoEmployee(@PathVariable(value = "employeeId") long employeeId, Model model) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		model.addAttribute("employeeObj", employee);
		model.addAttribute("readonly", "true");
		model.addAttribute("check", 1);
		return "edit_employee";
	}
}
