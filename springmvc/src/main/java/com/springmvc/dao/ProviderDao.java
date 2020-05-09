package com.springmvc.dao;

import com.springmvc.model.Provider;

import java.util.List;

public interface ProviderDao {

	public void deleteProvider(long providerId);

	public void addProvider(Provider provider);

	public void updateProvider(Provider provider);

	public Provider getProviderById(long providerId);

	public List<Provider> getAllProvider();


	}
