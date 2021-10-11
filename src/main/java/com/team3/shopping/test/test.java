package com.team3.shopping.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team3.shopping.controller.CouponController;

@Controller
@EnableCaching
@RequestMapping("/test")
public class test {

	
	private static final Logger logger = LoggerFactory.getLogger(test.class);
	
	
	@GetMapping("/1{mid}")
	@Cacheable("addresses")
	public String getAddress(@RequestParam int mid) {
		
		logger.info("실행됨"+mid);
		return "/home";
	}
	
}
