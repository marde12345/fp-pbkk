package com.sikokes.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sikokes.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public User getUserByUsername(String username) {
		Session currentSession = sessionFactory.getCurrentSession();

		User user = currentSession.get(User.class, username);
		
		return user;
	}

}
