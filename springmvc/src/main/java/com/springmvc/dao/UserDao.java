package com.springmvc.dao;

import com.springmvc.model.User;

import java.util.List;

public interface UserDao {

	public List<User> getAllUsers();

	public void deleteUser(long userId);

	public void addUser(User user);

	public User getUserById(long userId);

	public void updateUser(User user);

	public User getActiveUser(String userName);
}
