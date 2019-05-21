package com.sikokes.service;

import java.util.List;

import com.sikokes.model.Question;
import com.sikokes.model.User;

public interface QuestionService {
	public List<Question> getQuestions();
	public Question getQuestionById(int id);
	public void addQuestion(User user, Question question);
}
