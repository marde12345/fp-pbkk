package com.sikokes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PasienController {
	
	@RequestMapping("/pasien")
	public String showDoktor() {
		return "pasienHome";
	}
}
