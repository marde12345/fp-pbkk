package com.sikokes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DoktorController {

	@RequestMapping("/doktor")
	public String showDoktor() {
		return "doktorHome";
	}
}
