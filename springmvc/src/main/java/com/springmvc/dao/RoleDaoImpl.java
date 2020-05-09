package com.springmvc.dao;

import com.springmvc.model.Role;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDaoImpl implements RoleDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addRole(Role role) {
		Session session = sessionFactory.openSession();
		session.save(role);
	}

	@Override
	public void updateRole(Role role) {
		Session session = sessionFactory.openSession();
		session.update(role);
		session.flush();
		session.close();
	}

	@Override
	public void deleteRole(long roleId) {
		Session session = sessionFactory.openSession();
		Role role = (Role) session.get(Role.class,roleId);
		session.delete(role);
		session.flush();
		session.close();
	}

	@Override
	public Role getRoleById(long roleId){
		Session session = sessionFactory.openSession();
		Role role = (Role) session.get(Role.class,roleId);
		session.close();
		return role;
	}

	@Override
	public List<Role> getAllRole(){
		Session session = sessionFactory.openSession();
		List<Role> roles = session.createQuery("from Role").list();
		session.close();
		return roles;
	}
}
