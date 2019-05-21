package com.sikokes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sikokes.dao.AnswerDAO;
import com.sikokes.model.Answer;

@Service
public class AnswerServiceImpl implements AnswerService{

	@Autowired
	private AnswerDAO answerDAO;
	
	@Override
	public List<Answer> getAnswerByid(int id) {
		return answerDAO.getAnswerByid(id);
	}

}
