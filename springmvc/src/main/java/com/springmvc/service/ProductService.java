package com.springmvc.service;

import com.springmvc.model.Product;
import com.springmvc.model.Type;

import java.util.List;

public interface ProductService {

	public List<Product> getAllProduct();

	public Product getProductById(long productId);

	public void deleteProductId(long productId);

	public void addProduct(Product product);

	public void updateProduct(Product product);

	public List<Type> getAllType();

	public void addType(Type type);

	public void updateType(Type type);

	public void deleteType(long typeId);

	public Type getTypeById(long typeId);
}
