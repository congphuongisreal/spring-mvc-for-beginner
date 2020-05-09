package com.springmvc.service;

import com.springmvc.dao.EmployeeDao;
import com.springmvc.dao.UserDao;
import com.springmvc.model.Customer;
import com.springmvc.model.Employee;
import com.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.exceptions.TemplateOutputException;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	@Autowired
	private UserDao userDao;

	@Override
	public void addEmployee(Employee employee) {
		employee.setEnable(true);
		employeeDao.addEmployee(employee);
	}

	@Override
	@Transactional
	public List<Employee> getAllEmployee() {
		return employeeDao.getAllEmployee();
	}

	@Override
	@Transactional
	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);
	}

	@Override
	@Transactional
	public void deleteEmployee(long employeeId) {
		employeeDao.deleteEmployee(employeeId);
	}

	@Override
	@Transactional
	public Employee getEmployeeById(long employeeId) {
		return employeeDao.getEmployeeById(employeeId);
	}

}
