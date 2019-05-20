package com.sikokes.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "questions")
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "question_id")
	private int question_id;

	@Column(name = "from_user")
	private String from_user;

	@Column(name = "question")
	private String question;

	@Column(name = "judul")
	private String judul;

	@Column(name = "tag1")
	private int tag1;

	@Column(name = "tag2")
	private int tag2;

	@Column(name = "tag3")
	private int tag3;

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getFrom_user() {
		return from_user;
	}

	public void setFrom_user(String from_user) {
		this.from_user = from_user;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getJudul() {
		return judul;
	}

	public void setJudul(String judul) {
		this.judul = judul;
	}

	public int getTag1() {
		return tag1;
	}

	public void setTag1(int tag1) {
		this.tag1 = tag1;
	}

	public int getTag2() {
		return tag2;
	}

	public void setTag2(int tag2) {
		this.tag2 = tag2;
	}

	public int getTag3() {
		return tag3;
	}

	public void setTag3(int tag3) {
		this.tag3 = tag3;
	}

	public Question(int question_id, String from_user, String question, String judul, int tag1, int tag2, int tag3) {
		super();
		this.question_id = question_id;
		this.from_user = from_user;
		this.question = question;
		this.judul = judul;
		this.tag1 = tag1;
		this.tag2 = tag2;
		this.tag3 = tag3;
	}

	public Question() {
	}

}
