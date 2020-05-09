package com.springmvc.dao;

import com.springmvc.model.Department;

import java.util.List;

public interface DepartmentDao {

	public List<Department> getAllDeparment();

	public void addDepartment(Department department);

	public void updateDepartment(Department department);

	public void deleteDepartment(long departmentId);

	public Department getDepartmentById(long departmentId);
}
