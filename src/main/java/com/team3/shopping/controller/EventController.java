package com.team3.shopping.controller;

import java.security.Principal;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

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
import com.team3.shopping.dto.EventDto;
import com.team3.shopping.dto.MemberInfoDto;
import com.team3.shopping.service.CouponRedisService;
import com.team3.shopping.service.CouponService;
import com.team3.shopping.service.CouponService.EventTransferResult;
import com.team3.shopping.service.EventService;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Resource
	EventService eservice;
	
	@Resource
	CouponService couponservice;
	
	@Resource
	CouponRedisService redisservice;
	
	@Resource
	OrderService orderservice;
	
	//이벤트 페이지 홈
	@RequestMapping("/")
	public String home(Model model, Principal principal) {
		logger.info("이벤트 페이지");
		EventDto event = eservice.getEventContent();
		MemberInfoDto member = orderservice.getMid(principal.getName());
		String mid = member.getMid();
		
		model.addAttribute("eid", "11");
		model.addAttribute("mid", mid);
		model.addAttribute("event", event);
		//logger.info("#######" + event);
		return "event/event";
	}

	@ModelAttribute("eventStartDate")
	public Date initEvent() {
		logger.info("실행");

		String eid = "11";
		Date startDate = couponservice.getEventStartTime(eid);

		return startDate;
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
		EventTransferResult result = couponservice.issueCoupon(newCoupon);
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
	
	
	//레디스에서 테스트하는 메서드
	@GetMapping(value = "rediscoupon/{mid}", produces = "application/json'; charset=UTF-8")
	@ResponseBody
	public String redisCoupon(@PathVariable("mid") String mid, Principal principal, Model model) {
		MemberInfoDto member = orderservice.getMid(principal.getName());
		JSONObject jsonObject = new JSONObject();
		//쿠폰의 양을 확인한다
		if(eservice.getEamount() < 1) {
			logger.info("sold out");
			jsonObject.put("result", "sold out");
		} else {//쿠폰이 남아있으면
			String eid ="11";
			//아이디가 중복된 아이디인지 확인
			if(redisservice.checkCouponMid(mid, eid)) { //중복된 아이디가 없으면
				//------쿠폰 생성------
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
				//------쿠폰 생성 끝------
				
				redisservice.setCoupons();
				redisservice.insertCoupon(mid, eid);
				couponservice.insertCoupon(newCoupon);
				jsonObject.put("result", "success");
			}else {//중복 참여한 아이디가 있으면
				logger.info("중복 참여한 아이디가 있습니다.");
				jsonObject.put("result", "overlap");
			}
		}

//		
//		Callable<Integer> task = new Callable<Integer>() {
//			
//			@Override
//			public Integer call() throws Exception {
//			}};
		
		String json = jsonObject.toString();
		return json;
	}
}
