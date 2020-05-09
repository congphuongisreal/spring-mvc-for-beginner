package com.springmvc.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "sale_invoice")
public class SaleInvoice implements Serializable {

	private static final long serialVersionUID = 385729102839274920L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long saleInvoiceId;

	@ManyToOne
	@JoinColumn(name = "employee")
	private Employee employee;

	@ManyToOne
	@JoinColumn(name = "customer")
	private Customer customer;

	@ManyToOne
	@JoinColumn(name = "product")
	private Product product;

	private String date;
	private String address;
	private String note;
	private boolean enable;

	public long getSaleInvoiceId() {
		return saleInvoiceId;
	}

	public void setSaleInvoiceId(long saleInvoiceId) {
		this.saleInvoiceId = saleInvoiceId;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
