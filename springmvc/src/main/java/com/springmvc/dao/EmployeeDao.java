package com.springmvc.dao;

import com.springmvc.model.Employee;

import java.util.List;

public interface EmployeeDao {

	public void addEmployee(Employee employee);

	public List<Employee> getAllEmployee();

	public void updateEmployee(Employee employee);

	public void deleteEmployee(long employeeId);

	public Employee getEmployeeById(long employeeId);
}
