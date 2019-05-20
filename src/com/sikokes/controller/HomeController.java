package com.sikokes.controller;

import java.security.Principal;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sikokes.model.Role;
import com.sikokes.model.User;
import com.sikokes.service.RoleService;
import com.sikokes.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String showHome(Principal principal, Model model) {
		
		if(principal==null) return "login";
		
		User user = userService.getUserByUsername(principal.getName());
		model.addAttribute(user);
		
		return "home";
	}
	
	@GetMapping("/coba")
	public String showCoba() {
		return "coba";
	}
}
