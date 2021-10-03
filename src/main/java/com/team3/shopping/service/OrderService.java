package com.team3.shopping.service;

import java.util.List;
import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.team3.shopping.dao.OrderDao;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;

@Service
public class OrderService {
	private static final Logger logger = LoggerFactory.getLogger(OrderService.class);

	@Resource
	private OrderDao orderDao;

	// �ֹ� ��ȸ
	public List<OrderDto> getOrderList(String mid) {
		logger.info("����");
		List<OrderDto> orders = orderDao.selectAllbyMid(mid);

		return orders;
	}

	public List<OrderItemDto> getOrderItems(String oid) {
		logger.info("����");

		List<OrderItemDto> orderItems = orderDao.selectOrderItemsbyOid(oid);

		return orderItems;
	}
	
	public String getPname(String pid) {
		logger.info("����");

		String pname = orderDao.selectPnamebyPid(pid);

		return pname;
	}
}
