package com.team3.shopping.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@RequestMapping("/")
	public String content() {
		logger.info("�떎�뻾");
		return "order/order";
	}
	
	@RequestMapping("/error/403")
	public String error403() {
		logger.info("�떎�뻾");
		return "error/403";
	}
	
	@Resource OrderService orderService;
	
	@GetMapping("/orderList")
	public String orderList(Model model) {
		logger.info("실행");
		
		String mid = "M1"; //test 
		List<OrderDto> orders = orderService.getOrderList(mid);
		
		for (OrderDto order : orders) {
			String OID = order.getOID();
			logger.info("oid " + OID);
			List<OrderItemDto> orderitems = orderService.getOrderItems(OID);
			order.setOrderItems(orderitems);
			order.setProductKindNum(orderitems.size());
			
			logger.info(orderitems.toString());
			//1개의 주문 이름 -- 1개의 product name
			String PID = orderitems.get(0).getPID();
			String pname = orderService.getPname(PID);
			order.setMainItem(pname);
		}
		
		model.addAttribute("orderList", orders);
		
		return "order/orderList";
	}
}  
