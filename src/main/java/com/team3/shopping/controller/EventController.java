package com.team3.shopping.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.shopping.dto.EventDto;
import com.team3.shopping.service.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Resource
	EventService eservice;
	
	@RequestMapping("/")
	public String home(Model model) {
		logger.info("이벤트 페이지");
		EventDto event = eservice.getEventContent();
		model.addAttribute("event", event);
		//logger.info("#######" + event);
		return "event/event";
	}
}
