package com.springmvc.dao;

import com.springmvc.model.Provider;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProviderDaoImp implements ProviderDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void deleteProvider(long providerId) {
		Session session = sessionFactory.openSession();
		Provider provider = (Provider) session.get(Provider.class,providerId);
		session.delete(provider);
		session.flush();
		session.close();
	}

	@Override
	public void addProvider(Provider provider) {
		Session session = sessionFactory.openSession();
		session.save(provider);
		session.close();
	}

	@Override
	public void updateProvider(Provider provider) {
		Session session = sessionFactory.openSession();
		session.update(provider);
		session.flush();
		session.close();
	}

	@Override
	public Provider getProviderById(long providerId){
		Session session = sessionFactory.openSession();
		Provider provider = (Provider) session.get(Provider.class,providerId);
		session.close();
		return provider;
	}

	@Override
	public List<Provider> getAllProvider(){
		Session session = sessionFactory.openSession();
		List<Provider> providers = session.createQuery("from Provider").list();
		session.close();
		return providers;
	}
}
