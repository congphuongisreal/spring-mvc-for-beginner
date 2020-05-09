package com.springmvc.dao;

import com.springmvc.model.RoleDetail;

import java.util.List;

public interface RoleDetailDao {

	public void addRoleDetail(RoleDetail roleDetail);

	public void updateRoleDetail(RoleDetail roleDetail);

	public void deleteRoleDetail(long roleDetailId);

	public RoleDetail getDetailById(long roleDetailId);

	public List<RoleDetail> getAllDetail();
}
