package com.springmvc.service;

import com.springmvc.model.Employee;
import com.springmvc.model.User;

import java.util.List;

public interface EmployeeService {

	public void addEmployee(Employee employee);

	public List<Employee> getAllEmployee();

	public void updateEmployee(Employee employee);

	public void deleteEmployee(long employeeId);

	public Employee getEmployeeById(long employeeId);
}
