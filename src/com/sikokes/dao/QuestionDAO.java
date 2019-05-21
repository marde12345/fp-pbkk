package com.sikokes.dao;

import java.util.List;

import com.sikokes.model.Question;

public interface QuestionDAO {
	public List<Question> getQuestions();
	public Question getQuestionById(int id);
}
