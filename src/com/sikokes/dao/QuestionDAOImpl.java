package com.sikokes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sikokes.model.Question;
import com.sikokes.model.User;

@Repository
public class QuestionDAOImpl implements QuestionDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Question> getQuestions() {
		return sessionFactory.getCurrentSession().createQuery("FROM Question", Question.class).getResultList();
	}

	@Override
	public Question getQuestionById(int id) {
		return sessionFactory.getCurrentSession().get(Question.class, id);
	}

	@Override
	public void addQuestion(User user, Question question) {
		sessionFactory.getCurrentSession().save(question);	
	}

}
