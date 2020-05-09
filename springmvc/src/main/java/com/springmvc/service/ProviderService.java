package com.springmvc.service;

import com.springmvc.model.Provider;
import com.springmvc.model.User;

import java.util.List;

public interface ProviderService {

	public void deleteProvider(long providerId);

	public void addProvider(Provider provider);

	public void updateProvider(Provider provider);

	public Provider getProviderById(long providerId);

	public List<Provider> getAllProvider();
}
