package com.springmvc.model;

import com.springmvc.validator.EmailValid;
import com.springmvc.validator.NameValid;
import com.springmvc.validator.PhoneNumberValid;
import org.hibernate.validator.constraints.NotEmpty;



import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "employee")
public class Employee implements Serializable {

	private static final long serialVersionUID = 38291375061234895L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long employeeId;

	@NotEmpty
	@NameValid
	private String name;

	@Column(name = "phone_number")
	@PhoneNumberValid
	private String phoneNumber;

	@NotEmpty
	private String dob;
	private String gender;
	private String address;

	@NotEmpty
	@EmailValid
	private String email;

	private boolean enable;

	@ManyToOne
	@JoinColumn(name = "employee_department")
	private Department department;

	@ManyToOne
	@JoinColumn(name = "employee_job")
	private Job job;

	@OneToOne(fetch = FetchType.LAZY)
	private PurchaseInvoice purchaseInvoice;

	@OneToOne(mappedBy = "employee",fetch = FetchType.LAZY)
	private SaleInvoice saleInvoice;

	public PurchaseInvoice getPurchaseInvoice() {
		return purchaseInvoice;
	}

	public void setPurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		this.purchaseInvoice = purchaseInvoice;
	}

	public SaleInvoice getSaleInvoice() {
		return saleInvoice;
	}

	public void setSaleInvoice(SaleInvoice saleInvoice) {
		this.saleInvoice = saleInvoice;
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
