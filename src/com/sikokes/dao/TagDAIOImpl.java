package com.sikokes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sikokes.model.Role;
import com.sikokes.model.Tag;

@Repository
public class TagDAIOImpl implements TagDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Tag> getTags() {
		Session session = sessionFactory.getCurrentSession();

		Query<Tag> query = session.createQuery("FROM Tag", Tag.class);

		List<Tag> tags = query.getResultList();
		
		return tags;
	}

}
