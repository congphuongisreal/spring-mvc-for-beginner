package com.springmvc.service;

import com.springmvc.dao.RoleDao;
import com.springmvc.dao.UserDao;
import com.springmvc.model.Role;
import com.springmvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private RoleDao roleDao;


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


	@Override
	public void addRole(Role role) {
		String name = role.getName();
		role.setName(name.toUpperCase());
		roleDao.addRole(role);
	}

	@Override
	public void updateRole(Role role) {
		roleDao.updateRole(role);
	}

	@Override
	public void deleteRole(long roleId) {
		roleDao.deleteRole(roleId);
	}

	@Override
	public Role getRoleById(long roleId) {
		return roleDao.getRoleById(roleId);
	}

	@Override
	public List<Role> getAllRole() {
		return roleDao.getAllRole();
	}

}
