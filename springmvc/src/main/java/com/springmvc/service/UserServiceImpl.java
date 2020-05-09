package com.springmvc.service;

import com.springmvc.dao.UserDao;
import com.springmvc.model.Customer;
import com.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<User> getAllUsers() {
		return userDao.getAllUsers();
	}

	@Override
	public void deleteUser(long userId) {
		userDao.deleteUser(userId);
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public User getUserById(long userId) {
		return userDao.getUserById(userId);
	}

	@Override
	public void updateUser(User user){
		userDao.updateUser(user);
	}

}
