package com.springmvc.service;

import com.springmvc.dao.PurchaseInvoiceDao;
import com.springmvc.dao.SaleInvoiceDao;
import com.springmvc.model.PurchaseInvoice;
import com.springmvc.model.SaleInvoice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private SaleInvoiceDao saleInvoiceDao;

	@Autowired
	private PurchaseInvoiceDao purchaseInvoiceDao;

	@Override
	public void addSaleInvoice(SaleInvoice saleInvoice) {
		saleInvoiceDao.addSaleInvoice(saleInvoice);
	}

	@Override
	public void updateSaleInvoice(SaleInvoice saleInvoice) {
		saleInvoiceDao.updateSaleInvoice(saleInvoice);
	}

	@Override
	public void deleteSaleInvoice(long saleInvoiceId) {
		saleInvoiceDao.deleteSaleInvoice(saleInvoiceId);
	}

	@Override
	public void addPurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		purchaseInvoiceDao.addPurchaseInvoice(purchaseInvoice);
	}

	@Override
	public void updatePurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		purchaseInvoiceDao.updatePurchaseInvoice(purchaseInvoice);
	}

	@Override
	public void deletePurchaseInvoice(long purchaseInvoiceId) {
		purchaseInvoiceDao.deletePurchaseInvoice(purchaseInvoiceId);
	}

	@Override
	public List<PurchaseInvoice> getAllPurchase() {
		return purchaseInvoiceDao.getAllPurchase();
	}

	@Override
	public PurchaseInvoice getPurchaseById(long purchaseInvoiceId) {
		return purchaseInvoiceDao.getPurchaseById(purchaseInvoiceId);
	}

	@Override
	public List<SaleInvoice> getAllSale() {
		return saleInvoiceDao.getAllSale();
	}

	@Override
	public SaleInvoice getSaleById(long saleInvoiceId) {
		return saleInvoiceDao.getSaleById(saleInvoiceId);
	}
}
