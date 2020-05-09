package com.springmvc.dao;

import com.springmvc.model.Role;

import java.util.List;

public interface RoleDao {

	public void addRole(Role role);

	public void updateRole(Role role);

	public void deleteRole(long roleId);

	public Role getRoleById(long roleId);

	public List<Role> getAllRole();
}
