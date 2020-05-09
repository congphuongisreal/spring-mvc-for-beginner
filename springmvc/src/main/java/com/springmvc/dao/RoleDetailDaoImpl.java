package com.springmvc.dao;

import com.springmvc.model.RoleDetail;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDetailDaoImpl implements RoleDetailDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addRoleDetail(RoleDetail roleDetail) {
		Session session = sessionFactory.openSession();
		session.save(roleDetail);
		session.close();
	}

	@Override
	public void updateRoleDetail(RoleDetail roleDetail) {
		Session session = sessionFactory.openSession();
		session.update(roleDetail);
		session.flush();
		session.close();
	}

	@Override
	public void deleteRoleDetail(long roleDetailId) {
		Session session = sessionFactory.openSession();
		RoleDetail roleDetail = (RoleDetail) session.get(RoleDetail.class,roleDetailId);
		session.delete(roleDetail);
		session.flush();
		session.close();
	}

	@Override
	public RoleDetail getDetailById(long roleDetailId) {
		Session session = sessionFactory.openSession();
		RoleDetail roleDetail = (RoleDetail) session.get(RoleDetail.class,roleDetailId);
		session.close();
		return roleDetail;
	}

	@Override
	public List<RoleDetail> getAllDetail() {
		Session session = sessionFactory.openSession();
		List<RoleDetail> roleDetails = session.createQuery("from RoleDetail").list();
		session.close();
		return roleDetails;
	}
}
