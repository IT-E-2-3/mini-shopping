package com.team3.shopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String content() {
		logger.info("실행");
		return "home";
	}
	
	@RequestMapping("/error/403")
	public String error403() {
		logger.info("실행123");
		return "error/403";
	}
	//hello team3
	@GetMapping("/loginform")
	public String loginForm() {
		logger.info("실행123");
		return "member/loginForm2";
	}
	
	@GetMapping("/login")
	public String login() {
		logger.info("실행123");
		return "member/loginForm2";
	}
	
	
}  
