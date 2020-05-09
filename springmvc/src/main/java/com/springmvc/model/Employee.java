package com.springmvc.model;

import org.hibernate.annotations.Cascade;

import javax.validation.constraints.NotNull;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "employee")
public class Employee implements Serializable {

	private static final long serialVersionUID = 38291375061234895L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long employeeId;

	@NotNull
	private String name;

	@Column(name = "phone_number")
	private String phoneNumber;

	private String dob;
	private String gender;
	private String address;
	private String email;
	private boolean enable;

	@ManyToOne
	@JoinColumn(name = "employee_department")
	private Department department;

	@ManyToOne
	@JoinColumn(name = "employee_job")
	private Job job;

	@OneToMany(mappedBy ="employee")
	private List<PurchaseInvoice> purchaseInvoices;

	@OneToMany(mappedBy = "employee")
	private List<SaleInvoice> saleInvoices;

	public List<PurchaseInvoice> getPurchaseInvoices() {
		return purchaseInvoices;
	}

	public void setPurchaseInvoices(List<PurchaseInvoice> purchaseInvoices) {
		this.purchaseInvoices = purchaseInvoices;
	}

	public List<SaleInvoice> getSaleInvoices() {
		return saleInvoices;
	}

	public void setSaleInvoices(List<SaleInvoice> saleInvoices) {
		this.saleInvoices = saleInvoices;
	}


	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
