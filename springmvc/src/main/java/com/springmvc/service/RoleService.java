package com.springmvc.service;

import com.springmvc.model.Role;
import com.springmvc.model.RoleDetail;

import java.util.List;

public interface RoleService {

	public void addRole(Role role);

	public void updateRole(Role role);

	public void deleteRole(long roleId);

	public Role getRoleById(long roleId);

	public List<Role> getAllRole();

	public void addRoleDetail(RoleDetail roleDetail);

	public void updateRoleDetail(RoleDetail roleDetail);

	public void deleteRoleDetail(long roleDetailId);

	public RoleDetail getDetailById(long roleDetailId);

	public List<RoleDetail> getAllDetail();
}
