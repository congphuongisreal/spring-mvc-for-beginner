package com.springmvc.model;
import javax.validation.constraints.NotNull;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "provider")
public class Provider implements Serializable {

	private static final long serialVersionUID = 29105889382946657L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long providerId;

	@NotNull
	private String name;

	@Column(name ="phone_number")
	private String phoneNumber;

	private String email;
	private String address;

	@OneToOne
	private PurchaseInvoice purchaseInvoice;

	public PurchaseInvoice getPurchaseInvoice() {
		return purchaseInvoice;
	}

	public void setPurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		this.purchaseInvoice = purchaseInvoice;
	}

	public long getProviderId() {
		return providerId;
	}

	public void setProviderId(long providerId) {
		this.providerId = providerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
