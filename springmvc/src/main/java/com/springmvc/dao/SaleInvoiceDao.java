package com.springmvc.dao;

import com.springmvc.model.SaleInvoice;

import java.util.List;

public interface SaleInvoiceDao {

	public void addSaleInvoice(SaleInvoice saleInvoice);

	public void updateSaleInvoice(SaleInvoice saleInvoice);

	public void deleteSaleInvoice(long saleInvoiceId);

	public List<SaleInvoice> getAllSale();

	public SaleInvoice getSaleById(long saleInvoiceId);
}
