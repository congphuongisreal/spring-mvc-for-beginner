package com.springmvc.service;

import com.springmvc.model.User;

import java.util.List;

public interface UserService {

	public List<User> getAllUsers();

	public void deleteUser(long userId);

	public void addUser(User user);

	public User getUserById(long userId);

	public void updateUser(User user);
}
