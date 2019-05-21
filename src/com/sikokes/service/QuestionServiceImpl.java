package com.sikokes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sikokes.dao.QuestionDAO;
import com.sikokes.model.Question;
import com.sikokes.model.User;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionDAO questionDAO;
	
	@Override
	@Transactional
	public List<Question> getQuestions() {
		return questionDAO.getQuestions();
	}

	@Override
	public Question getQuestionById(int id) {
		return questionDAO.getQuestionById(id);
	}

	@Override
	public void addQuestion(User user, Question question) {
		questionDAO.addQuestion(user, question);
	}

}
