package com.springmvc.dao;

import com.springmvc.model.Type;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TypeDaoImpl implements TypeDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Type> getAllType() {
		Session session = sessionFactory.openSession();
		List<Type> types = session.createQuery("from Type").list();
		session.close();
		return types;
	}

	@Override
	public void addType(Type type) {
		Session session = sessionFactory.openSession();
		session.save(type);
		session.close();
	}

	@Override
	public void updateType(Type type) {
		Session session = sessionFactory.openSession();
		session.update(type);
		session.flush();
		session.close();
	}

	@Override
	public void deleteType(long typeId) {
		Session session = sessionFactory.openSession();
		Type type = getTypeById(typeId);
		session.delete(type);
		session.flush();
		session.close();
	}

	@Override
	public Type getTypeById(long typeId) {
		Session session = sessionFactory.openSession();
		Type type = (Type) session.get(Type.class,typeId);
		session.close();
		return type;
	}
}
