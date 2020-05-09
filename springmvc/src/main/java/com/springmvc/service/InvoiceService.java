package com.springmvc.service;

import com.springmvc.model.PurchaseInvoice;
import com.springmvc.model.SaleInvoice;

import java.util.List;

public interface InvoiceService {

	public void addSaleInvoice(SaleInvoice saleInvoice);

	public void updateSaleInvoice(SaleInvoice saleInvoice);

	public void deleteSaleInvoice(long saleInvoiceId);

	public void addPurchaseInvoice(PurchaseInvoice purchaseInvoice);

	public void updatePurchaseInvoice(PurchaseInvoice purchaseInvoice);

	public void deletePurchaseInvoice(long purchaseInvoiceId);

	public List<PurchaseInvoice> getAllPurchase();

	public PurchaseInvoice getPurchaseById(long purchaseInvoiceId);

	public List<SaleInvoice> getAllSale();

	public SaleInvoice getSaleById(long saleInvoiceId);
}
