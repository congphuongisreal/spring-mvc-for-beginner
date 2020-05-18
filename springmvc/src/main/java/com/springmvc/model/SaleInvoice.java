package com.springmvc.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
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

	@OneToOne
	@NotEmpty
	@JoinColumn(name = "employee")
	private Employee employee;

	@OneToOne
	@NotEmpty
	@JoinColumn(name = "customer")
	private Customer customer;

	@OneToMany
	private List<Product> products;

	private String date;
	private String address;
	private String note;
	private long total;
	private boolean enable;

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
