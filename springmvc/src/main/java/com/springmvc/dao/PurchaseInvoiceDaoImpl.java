package com.springmvc.dao;

import com.springmvc.model.PurchaseInvoice;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PurchaseInvoiceDaoImpl implements PurchaseInvoiceDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		Session session = sessionFactory.openSession();
		session.save(purchaseInvoice);
		session.close();
	}

	@Override
	public void updatePurchaseInvoice(PurchaseInvoice purchaseInvoice) {
		Session session = sessionFactory.openSession();
		session.update(purchaseInvoice);
		session.flush();
		session.close();
	}

	@Override
	public void deletePurchaseInvoice(long purchaseInvoiceId) {
		Session session = sessionFactory.openSession();
		PurchaseInvoice purchaseInvoice = (PurchaseInvoice) session.get(PurchaseInvoice.class,purchaseInvoiceId);
		session.delete(purchaseInvoice);
		session.flush();
		session.close();
	}

	@Override
	public List<PurchaseInvoice> getAllPurchase() {
		Session session = sessionFactory.openSession();
		List<PurchaseInvoice> purchaseInvoices = session.createQuery("from PurchaseInvoice").list();
		session.close();
		return purchaseInvoices;
	}

	@Override
	public PurchaseInvoice getPurchaseById(long purchaseInvoiceId) {
		Session session = sessionFactory.openSession();
		PurchaseInvoice purchaseInvoice = (PurchaseInvoice) session.get(PurchaseInvoice.class,purchaseInvoiceId);
		session.close();
		return purchaseInvoice;
	}
}
