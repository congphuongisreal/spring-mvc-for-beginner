package com.springmvc.dao;

import com.springmvc.model.SaleInvoice;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SaleInvoiceDaoImpl implements SaleInvoiceDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addSaleInvoice(SaleInvoice saleInvoice) {
		Session session = sessionFactory.openSession();
		session.save(saleInvoice);
		session.close();
	}

	@Override
	public void updateSaleInvoice(SaleInvoice saleInvoice) {
		Session session = sessionFactory.openSession();
		session.update(saleInvoice);
		session.flush();
		session.close();
	}

	@Override
	public void deleteSaleInvoice(long saleInvoiceId) {
		Session session = sessionFactory.openSession();
		SaleInvoice saleInvoice = (SaleInvoice) session.get(SaleInvoice.class, saleInvoiceId);
		session.delete(saleInvoice);
		session.flush();
		session.close();
	}

	@Override
	public List<SaleInvoice> getAllSale() {
		Session session = sessionFactory.openSession();
		List<SaleInvoice> saleInvoices = session.createQuery("from SaleInvoice").list();
		session.close();
		return saleInvoices;
	}

	@Override
	public SaleInvoice getSaleById(long saleInvoiceId) {
		Session session = sessionFactory.openSession();
		SaleInvoice saleInvoice = (SaleInvoice) session.get(SaleInvoice.class, saleInvoiceId);
		session.close();
		return saleInvoice;
	}

}
