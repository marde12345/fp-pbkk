package com.sikokes.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sikokes.model.Question;
import com.sikokes.model.User;
import com.sikokes.service.QuestionService;
import com.sikokes.service.UserService;

@Controller
public class QuestionController {

	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/question")
	public String addQuestionPage(Model model, HttpSession httpSession) {
		Question question = new Question();
		model.addAttribute("modelQuestion", question);
		
		return "question";
	}
	
	@PostMapping("/addQuestion")
	public String addQuestion(@ModelAttribute("modelQuestion") Question question, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		
		questionService.addQuestion(user, question);
		return "/";
	}
	
}
