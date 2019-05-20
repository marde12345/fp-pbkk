package com.sikokes.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="answers")
public class Answer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="answer_id")
	private int answer_id;
	
	@Column(name="from_question")
	private int from_question;
	
	@Column(name="answer")
	private String answer;
	
	@Column(name="answer_user")
	private String answer_user;

	public int getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(int answer_id) {
		this.answer_id = answer_id;
	}

	public int getFrom_question() {
		return from_question;
	}

	public void setFrom_question(int from_question) {
		this.from_question = from_question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswer_user() {
		return answer_user;
	}

	public void setAnswer_user(String answer_user) {
		this.answer_user = answer_user;
	}

	public Answer(int answer_id, int from_question, String answer, String answer_user) {
		super();
		this.answer_id = answer_id;
		this.from_question = from_question;
		this.answer = answer;
		this.answer_user = answer_user;
	}

	public Answer() {
	}
	
	
}
