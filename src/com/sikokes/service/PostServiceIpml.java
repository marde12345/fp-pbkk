package com.sikokes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sikokes.model.Post;

@Service
public class PostServiceIpml implements PostService{

	@Autowired
	private AnswerService answerService;
	
	@Autowired
	private QuestionService questionService;
	
	
	@Override
	public List<Post> getPosts() {
		
		return null;
	}

}
