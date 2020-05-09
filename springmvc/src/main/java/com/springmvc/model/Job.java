package com.springmvc.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "job")
public class Job implements Serializable {

	private static final long serialVersionUID = 62738495019283471L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long jobId;

	@NotNull
	private String name;

	private boolean enable;

	@OneToMany(mappedBy = "job")
	private List<Employee> emloyees;

	public List<Employee> getEmloyees() {
		return emloyees;
	}

	public void setEmloyees(List<Employee> emloyees) {
		this.emloyees = emloyees;
	}

	public long getJobId() {
		return jobId;
	}

	public void setJobId(long jobId) {
		this.jobId = jobId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
