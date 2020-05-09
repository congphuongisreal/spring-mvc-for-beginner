package com.springmvc.dao;

import com.springmvc.model.Product;

import java.util.List;

public interface ProductDao {

	public List<Product> getAllProduct();

	public Product getProductById(long productId);

	public void deleteProductId(long productId);

	public void addProduct(Product product);

	public void updateProduct(Product product);

}
