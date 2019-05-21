package com.sikokes.controller;

import java.security.Principal;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sikokes.model.Question;
import com.sikokes.model.Role;
import com.sikokes.model.User;
import com.sikokes.service.AnswerService;
import com.sikokes.service.QuestionService;
import com.sikokes.service.RoleService;
import com.sikokes.service.TagService;
import com.sikokes.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private TagService tagService;
	
	@Autowired
	private AnswerService answerService;
	
	@GetMapping("/")
	public ModelAndView showHome(Principal principal, Model model) {
		if(principal==null) return new ModelAndView("login");
		
		ModelAndView mav = new ModelAndView("home");
		
		User user = userService.getUserByUsername(principal.getName());
		List<Question> questions = questionService.getQuestions();
		
		System.out.println(questions);
		
 		model.addAttribute(user);
		mav.addObject("questions",questions);
		
		return mav;
	}
	
	@RequestMapping(value="jawaban",method=RequestMethod.GET)
	public ModelAndView showJawaban(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("jawaban");
		
		mav.addObject("jawaban",answerService.getAnswerByid(id));
		
		return mav;
	}
}
