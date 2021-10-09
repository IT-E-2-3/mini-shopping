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
import com.team3.shopping.dto.EventDto;
import com.team3.shopping.dto.MemberInfoDto;
import com.team3.shopping.service.CouponService;
import com.team3.shopping.service.EventService;
import com.team3.shopping.service.OrderService;

@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Resource
	EventService eservice;
	
	@Resource
	CouponService couponservice;
	
	@Resource
	OrderService orderservice;
	
	@RequestMapping("/event/")
	public String home(Model model) {
		logger.info("이벤트 페이지");
		EventDto event = eservice.getEventContent();
		model.addAttribute("event", event);
		//logger.info("#######" + event);
		return "event/event";
	}
	
	@RequestMapping("/mycoupon")
	public String mycoupon(Principal principal, Model model) {
		logger.info("마이 쿠폰");
		MemberInfoDto member = orderservice.getMid(principal.getName());
		String mid = member.getMid();
		String eid = "11";
		List<CouponDto> couponList = couponservice.getCouponList(mid, eid);
		int couponRows = couponservice.getCouponRows(mid, eid);
		model.addAttribute("couponList", couponList);
		model.addAttribute("couponRows", couponRows);
		return "event/coupon";
		
	}
}
