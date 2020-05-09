package com.springmvc.service;

import com.springmvc.dao.DepartmentDao;
import com.springmvc.dao.JobDao;
import com.springmvc.model.Department;
import com.springmvc.model.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {


	@Autowired
	private JobDao jobDao;

	@Autowired
	private DepartmentDao departmentDao;

	@Override
	@Transactional
	public List<Department> getAllDepartment() {
		return departmentDao.getAllDeparment();
	}

	@Override
	@Transactional
	public void addDepartment(Department department) {
		department.setEnable(false);
		departmentDao.addDepartment(department);
	}

	@Override
	@Transactional
	public void updateDepartment(Department department) {
		departmentDao.updateDepartment(department);
	}

	@Override
	@Transactional
	public void deleteDepartment(long departmentId) {
		departmentDao.deleteDepartment(departmentId);
	}

	@Override
	@Transactional
	public List<Job> getAllJob() {
		return jobDao.getAllJob();
	}

	@Override
	@Transactional
	public void addJob(Job job) {
		job.setEnable(false);
		jobDao.addJob(job);
	}

	@Override
	@Transactional
	public void updateJob(Job job) {
		jobDao.updateJob(job);
	}

	@Override
	@Transactional
	public void deleteJob(long jobId) {
		jobDao.deleteJob(jobId);
	}


	@Override
	@Transactional
	public Job getJobById(long jobId) {
		return jobDao.getJobById(jobId);
	}

	@Override
	public Department getDepartmentById(long departmentId) {
		return departmentDao.getDepartmentById(departmentId);
	}
}
