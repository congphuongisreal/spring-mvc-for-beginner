package com.springmvc.dao;

import com.springmvc.model.Type;

import java.util.List;


public interface TypeDao {

	public List<Type> getAllType();

	public void addType(Type type);

	public void updateType(Type type);

	public void deleteType(long typeId);

	public Type getTypeById(long typeId);
}
