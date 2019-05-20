package com.sikokes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sikokes.model.Role;

@Repository
public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Role> getRoles() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Role> query = currentSession.createQuery("FROM Role", Role.class);
		
		List<Role> roles = query.getResultList();
		
		return roles;
	}

}
