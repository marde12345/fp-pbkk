package com.sikokes.controller;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sikokes.model.Role;
import com.sikokes.service.RoleService;

@Controller
public class HomeController {
	
	@Autowired
	private RoleService roleService;
	
	@GetMapping("/")
	public String showHome() {
		
		List<Role> roles = roleService.getRoles();
		System.out.println(roles);
		return "home";
	}
	
	@GetMapping("/coba")
	public String showCoba() {
		return "coba";
	}
}
