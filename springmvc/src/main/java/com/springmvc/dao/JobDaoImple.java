package com.springmvc.dao;

import com.springmvc.model.Job;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JobDaoImple implements JobDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Job> getAllJob() {
		Session session = sessionFactory.openSession();
		List<Job> jobs = session.createQuery("from Job").list();
		session.close();
		return jobs;
	}

	@Override
	public void addJob(Job job) {
		Session session = sessionFactory.openSession();
		job.setEnable(false);
		session.save(job);
		session.close();
	}

	@Override
	public void updateJob(Job job) {
		Session session = sessionFactory.openSession();
		session.update(job);
		session.flush();
		session.close();
	}

	@Override
	public void deleteJob(long jobId) {
		Session session = sessionFactory.openSession();
		Job job = (Job) session.get(Job.class,jobId);
		session.delete(job);
		session.flush();
		session.close();
	}

	@Override
	public Job getJobById(long jobId){
		Session session = sessionFactory.openSession();
		Job job = (Job) session.get(Job.class,jobId);
		session.close();
		return job;
	}
}
