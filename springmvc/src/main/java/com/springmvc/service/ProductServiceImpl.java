package com.springmvc.service;

import com.springmvc.dao.ProductDao;
import com.springmvc.dao.TypeDao;
import com.springmvc.model.Department;
import com.springmvc.model.Product;
import com.springmvc.model.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {


	@Autowired
	private ProductDao productDao;

	@Autowired
	private TypeDao typeDao;

	@Override
	public List<Product> getAllProduct() {
		return productDao.getAllProduct();
	}

	@Override
	public Product getProductById(long productId) {
		return productDao.getProductById(productId);
	}

	@Override
	public void deleteProductId(long productId) {
		productDao.deleteProductId(productId);
	}

	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}

	@Override
	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}

	@Override
	public List<Type> getAllType() {
		return typeDao.getAllType();
	}

	@Override
	public void addType(Type type) {
		typeDao.addType(type);
	}

	@Override
	public void updateType(Type type) {
		typeDao.updateType(type);
	}

	@Override
	public void deleteType(long typeId) {
		typeDao.deleteType(typeId);
	}

	@Override
	public Type getTypeById(long typeId) {
		return typeDao.getTypeById(typeId);
	}
}
