package com.springmvc.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "purchase_invoice")
public class PurchaseInvoice implements Serializable {

	private static final long serialVersionUID = 382910599885746657L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long purchaseInvoiceId;

	@OneToOne
	@JoinColumn(name = "employee")
	private Employee employee;

	@OneToOne
	@JoinColumn(name = "provider")
	private Provider provider;

	@OneToMany
	private List<Product> products;

	private String address;
	private String date;
	private boolean enable;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getPurchaseInvoiceId() {
		return purchaseInvoiceId;
	}

	public void setPurchaseInvoiceId(long purchaseInvoiceId) {
		this.purchaseInvoiceId = purchaseInvoiceId;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
