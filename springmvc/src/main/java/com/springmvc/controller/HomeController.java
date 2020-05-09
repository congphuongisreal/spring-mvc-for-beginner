package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {


	@RequestMapping("login")
	public String login(@RequestParam(value = "invalid", required = false) String error, Model model) {
		if (error == null)
			model.addAttribute("invalid", "Invalid username and password");
		return "login";
	}

	@RequestMapping("/")
	public String sayHome() {
		return "redirect:/home";
	}

	@RequestMapping("/home")
	public String sayHome(Model model) {
		model.addAttribute("active", "class=\"mm-active\"");
		return "home";
	}
}