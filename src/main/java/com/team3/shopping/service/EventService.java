package com.team3.shopping.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.EventDao;
import com.team3.shopping.dto.EventDto;

@Service
public class EventService {

	@Resource
	EventDao eventdao;
	
	public EventDto getEventContent() {
		return eventdao.getEvent();
	}
	
	public int getEamount() {
		return eventdao.getEamount();
	}
}
