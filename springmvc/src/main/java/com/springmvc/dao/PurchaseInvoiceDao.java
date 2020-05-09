package com.springmvc.dao;

import com.springmvc.model.PurchaseInvoice;

import java.util.List;

public interface PurchaseInvoiceDao {

	public void addPurchaseInvoice(PurchaseInvoice purchaseInvoice);

	public void updatePurchaseInvoice(PurchaseInvoice purchaseInvoice);

	public void deletePurchaseInvoice(long purchaseInvoiceId);

	public List<PurchaseInvoice> getAllPurchase();

	public PurchaseInvoice getPurchaseById(long purchaseInvoiceId);
}
