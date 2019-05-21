package com.sikokes.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sikokes.model.Answer;
import com.sikokes.service.AnswerService;
import com.sikokes.service.UserService;

@Controller
public class AnswerController {
	
	@Autowired
	private AnswerService answerService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="jawaban",method=RequestMethod.GET)
	public ModelAndView showJawaban(@RequestParam("id") int id,Model model, Principal principal, HttpSession httpSession) {
		ModelAndView mav = new ModelAndView("jawaban");
		
		System.out.println(httpSession.getAttribute("user"));

		model.addAttribute(userService.getUserByUsername(principal.getName()));
		mav.addObject("jawaban",answerService.getAnswerByid(id));
//		
		return mav;
	}
	
	@PostMapping("/addJawaban")
	public String addJawaban(@ModelAttribute("modelAnswer") Answer answer, HttpSession httpSession, Principal principal) {

		return "redirect:/";
	}
}
