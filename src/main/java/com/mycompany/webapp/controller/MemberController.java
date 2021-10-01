package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		logger.info("실행");
		return "member/loginForm";
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		logger.info("실행");
		return "member/joinForm";
	}
	
	@RequestMapping("/with")
	public String newfile() {
		logger.info("s뉴파일");
		return "member/template_with_header_category";
	}
	@RequestMapping("/without")
	public String newfile2() {
		logger.info("s뉴파일");
		return "member/template_without_header_category";
	}
}  
