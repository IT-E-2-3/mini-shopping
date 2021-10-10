package com.team3.shopping.dao;

import org.apache.ibatis.annotations.Mapper;

import com.team3.shopping.dto.EventDto;

@Mapper
public interface EventDao {
	public EventDto getEvent();
	public int getEamount();
}
