package com.springmvc.model;

import javax.validation.constraints.NotNull;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "customer")
public class Customer implements Serializable {

	private static final long serialVersionUID = 45728192034928839L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long customerId;

	@OneToMany(mappedBy = "customer",fetch = FetchType.LAZY)
	@Column(name = "customer_sale")
	private List<SaleInvoice> saleInvoices;

	@Column(name = "phone_number")
	private String phoneNumber;

	@NotNull
	private String name;

	private String dob;
	private String address;
	private String email;


	public List<SaleInvoice> getSaleInvoices() {
		return saleInvoices;
	}

	public void setSaleInvoices(List<SaleInvoice> saleInvoices) {
		this.saleInvoices = saleInvoices;
	}

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
