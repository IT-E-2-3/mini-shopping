package com.team3.shopping.controller;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.shopping.dto.CouponDto;
import com.team3.shopping.dto.MemberInfoDto;
import com.team3.shopping.service.CouponService;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Resource
	OrderService orderservice;
	
	@Resource
	CouponService couponservice;
	
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
	
	@RequestMapping("/mycoupon")
	public String mycoupon(Principal principal, Model model) {
		logger.info("마이 쿠폰");
		MemberInfoDto member = orderservice.getMid(principal.getName());
		String mid = member.getMid();
		List<CouponDto> couponList = couponservice.getCouponList(mid);
		model.addAttribute("couponList", couponList);
		return "member/coupon";
	}
}  
