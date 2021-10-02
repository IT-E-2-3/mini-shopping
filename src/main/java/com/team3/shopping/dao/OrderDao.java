package com.team3.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;

@Mapper
public interface OrderDao {
		public List<OrderDto> selectAllbyMid(String mid);
		public Integer selectOrderAmount();
		public List<OrderItemDto> selectOrderItemsbyOid(String oid);
		public String selectPnamebyPid(String pid);
}	
