package com.team3.shopping.controller;

import java.security.Principal;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team3.shopping.dto.CouponDto;
import com.team3.shopping.dto.MemberInfoDto;
import com.team3.shopping.service.CouponService;
import com.team3.shopping.service.CouponService.EventTransferResult;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/coupon")
public class CouponController {
	private static final Logger logger = LoggerFactory.getLogger(CouponController.class);
	
	@Resource
	OrderService orderService;

	@Resource
	CouponService couponService;

	@ModelAttribute("eventStartDate")
	public Date initEvent() {
		logger.info("실행");

		String eid = "11";
		Date startDate = couponService.getEventStartTime(eid);

		return startDate;
	}

	@GetMapping("/")
	public String content(Model model, Principal principal) {
		logger.info("실행");

		MemberInfoDto member = orderService.getMid(principal.getName());
		String mid = member.getMid();

		model.addAttribute("eid", "11");
		model.addAttribute("mid", mid);
		return "event/coupon";
	}


}