package com.springmvc.service;

import com.springmvc.dao.ProviderDao;
import com.springmvc.dao.UserDao;
import com.springmvc.model.Provider;
import com.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProviderServiceImpl implements ProviderService{

	@Autowired
	private ProviderDao providerDao;


	@Override
	public void deleteProvider(long providerId) {
		providerDao.deleteProvider(providerId);
	}

	@Override
	public void addProvider(Provider provider) {
		providerDao.addProvider(provider);
	}

	@Override
	public void updateProvider(Provider provider) {
		providerDao.updateProvider(provider);
	}

	@Override
	public Provider getProviderById(long providerId){
		return providerDao.getProviderById(providerId);
	}

	@Override
	public List<Provider> getAllProvider(){
		return providerDao.getAllProvider();
	}
}
