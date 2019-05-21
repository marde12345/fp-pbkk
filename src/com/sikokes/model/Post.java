package com.sikokes.model;

import java.util.List;

import javax.persistence.Entity;

public class Post {
	private List<Answer> answer;
	private Question question;
	public List<Answer> getAnswer() {
		return answer;
	}
	public void setAnswer(List<Answer> answer) {
		this.answer = answer;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public Post(List<Answer> answer, Question question) {
		super();
		this.answer = answer;
		this.question = question;
	}
	public Post() {

	}

}
