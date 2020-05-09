package com.springmvc.dao;

import com.springmvc.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> getAllUsers() {
		Session session = sessionFactory.openSession();
		List<User> users = session.createQuery("from User").list();
		System.out.println(users);
		session.close();
		return users;
	}

	@Override
	public void deleteUser(long userId) {
		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class,userId);
		session.delete(user);
		session.flush();
		session.close();
	}

	@Override
	public void addUser(User user) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(user);
		session.flush();
		session.close();
	}

	@Override
	public User getUserById(long userId) {
		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class,userId);
		session.close();
		return user;
	}

	@Override
	public void updateUser(User user){
		Session session = sessionFactory.openSession();
		session.update(user);
		session.close();
	}
}
