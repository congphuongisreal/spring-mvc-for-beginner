package com.springmvc.dao;

import com.springmvc.model.Department;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Department> getAllDeparment() {
		Session session = sessionFactory.openSession();
		List<Department> departments = session.createQuery("from Department").list();
		session.close();
		return departments;
	}

	@Override
	public void addDepartment(Department department) {
		Session session = sessionFactory.openSession();
		session.save(department);
		session.close();
	}

	@Override
	public void updateDepartment(Department department) {
		Session session = sessionFactory.openSession();
		session.update(department);
		session.flush();
		session.close();
	}

	@Override
	public void deleteDepartment(long departmentId) {
		Session session = sessionFactory.openSession();
		Department department = (Department) session.get(Department.class,departmentId);
		session.delete(department);
		session.flush();
		session.close();
	}

	@Override
	public Department getDepartmentById(long departmentId){
		Session session = sessionFactory.openSession();
		Department department = (Department) session.get(Department.class,departmentId);
		session.close();
		return department;
	}
}
