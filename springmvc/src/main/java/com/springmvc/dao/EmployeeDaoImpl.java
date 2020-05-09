package com.springmvc.dao;

import com.springmvc.model.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addEmployee(Employee employee) {
		Session session = sessionFactory.openSession();
		session.save(employee);
		session.close();
	}

	@Override
	public List<Employee> getAllEmployee() {
		Session session = sessionFactory.openSession();
		List<Employee> employees = session.createQuery("from Employee").list();
		session.close();
		return employees;
	}

	@Override
	public void updateEmployee(Employee employee) {
		Session session = sessionFactory.openSession();
		session.update(employee);
		session.flush();
		session.close();
	}

	@Override
	public void deleteEmployee(long employeeId) {
		Session session = sessionFactory.openSession();
		Employee employee = (Employee) session.get(Employee.class,employeeId);
		session.delete(employee);
		session.flush();
		session.close();
	}

	@Override
	public Employee getEmployeeById(long employeeId) {
		Session session = sessionFactory.openSession();
		Employee employee = (Employee) session.get(Employee.class,employeeId);
		session.close();
		return employee;
	}
}
