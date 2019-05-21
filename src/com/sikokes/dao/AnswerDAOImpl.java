package com.sikokes.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sikokes.model.Answer;

@Repository
public class AnswerDAOImpl implements AnswerDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Answer> getAnswerByid(int id) {
		String sql = "from Answer where from_question="+id;
		return (List<Answer>) sessionFactory.getCurrentSession().createQuery(sql).list();
	}

	@Override
	public void addAnswerById(Answer answer) {
		sessionFactory.getCurrentSession().save(answer);
		
	}

}
