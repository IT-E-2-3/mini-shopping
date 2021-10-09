package com.team3.shopping.controller;

import java.security.Principal;
import java.util.Date;

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

	@GetMapping(value = "issue/{mid}", produces = "application/json'; charset=UTF-8")
	@ResponseBody
	public String issueCoupon(@PathVariable("mid") String mid, Principal principal, Model model) {
		logger.info("실행");
		
		String eid = "11";
		
		// 날짜 확인
		Date curDate = new Date();
		Date estartDate = (Date) model.getAttribute("eventStartDate");
		
		//결과 변수
		JSONObject jsonObject = new JSONObject();
		
		if(curDate.before(estartDate)) {
			jsonObject.put("result", "fail");
			String json = jsonObject.toString();
			return json;
		}
			
		//쿠폰 생성
		CouponDto newCoupon = new CouponDto();
		newCoupon.setEid(eid);
		newCoupon.setMid(mid);
		newCoupon.setCoupon_type("type");
		newCoupon.setCoupon_state("1");
		
		// 쿠폰 유효기간 설정 (임의)
		Date date = new Date();
        long timeInMilliSeconds = date.getTime();
        java.sql.Date date1 = new java.sql.Date(timeInMilliSeconds);
		
        newCoupon.setCoupon_startdate(date1);
		newCoupon.setCoupon_expiredate(date1);
		
		//쿠폰 발급
		EventTransferResult result = couponService.issueCoupon(newCoupon);
		logger.info("transaciton info " + result);
		
		if(result.toString().contains("FAIL")) {
			jsonObject.put("result", "fail");
			String json = jsonObject.toString();
			return json;
		}
		
		//eid에 추가
			
		jsonObject.put("result", "success");
		String json = jsonObject.toString();

		return json;	
	}

}