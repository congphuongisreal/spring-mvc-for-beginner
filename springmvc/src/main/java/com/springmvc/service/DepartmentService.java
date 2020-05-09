package com.springmvc.service;

import com.springmvc.model.Department;
import com.springmvc.model.Job;

import java.util.List;

public interface DepartmentService {

	public List<Department> getAllDepartment();

	public void addDepartment(Department department);

	public void updateDepartment(Department department);

	public void deleteDepartment(long departmentId);

	public void addJob(Job job);

	public void updateJob(Job job);

	public void deleteJob(long jobId);

	public List<Job> getAllJob();

	public Job getJobById(long jobId);

	public Department getDepartmentById(long departmentId);

}
