package com.springmvc.dao;

import com.springmvc.model.Job;

import java.util.List;

public interface JobDao {

	public List<Job> getAllJob();

	public void addJob(Job job);

	public void updateJob(Job job);

	public void deleteJob(long jobId);

	public Job getJobById(long jobId);

}
