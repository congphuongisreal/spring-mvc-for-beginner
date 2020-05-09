package com.springmvc.service;

import com.springmvc.dao.RoleDao;
import com.springmvc.dao.RoleDetailDao;
import com.springmvc.model.Role;
import com.springmvc.model.RoleDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService{


	@Autowired
	private RoleDao roleDao;

	@Autowired
	private RoleDetailDao roleDetailDao;

	@Override
	public void addRole(Role role) {
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

	@Override
	public void addRoleDetail(RoleDetail roleDetail) {
		roleDetailDao.addRoleDetail(roleDetail);
	}

	@Override
	public void updateRoleDetail(RoleDetail roleDetail) {
		roleDetailDao.updateRoleDetail(roleDetail);
	}

	@Override
	public void deleteRoleDetail(long roleDetailId) {
		roleDetailDao.deleteRoleDetail(roleDetailId);
	}

	@Override
	public RoleDetail getDetailById(long roleDetailId) {
		return roleDetailDao.getDetailById(roleDetailId);
	}

	@Override
	public List<RoleDetail> getAllDetail() {
		return roleDetailDao.getAllDetail();
	}
}
