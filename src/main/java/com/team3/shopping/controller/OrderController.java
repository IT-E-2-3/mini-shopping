package com.team3.shopping.controller;


import java.security.Principal;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.util.BeanUtil;
import com.team3.shopping.dto.CartDto;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.service.OrderService;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.dto.OrderRowDetailDto;

import oracle.sql.TIMESTAMP;


@Controller
@RequestMapping("/order")
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	/*
principal 로그인아이디 알기위해 사용

	 */
	
	@Resource
	OrderService orderService;
	
	
	int total_amount =0;
	List<OrderRowDetailDto> OrderRowList;
	
	@GetMapping("/")
	public String content( Model model, Principal principal) {
		logger.info("실행");
		total_amount = 0;
		String mid = orderService.getMid(principal.getName());
//		logger.info(mid);
		
		//cart의 내용 받아오기
		OrderRowList = orderService.getMyCart(mid);
		
		DecimalFormat decFormat = new DecimalFormat("###,###");
		for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
			int price = Integer.parseInt(orderRowDetailDto.getPprice());
			total_amount += price*orderRowDetailDto.getOamount();
			orderRowDetailDto.setPprice(decFormat.format(price));
		}
//		logger.info(total_amount+" ");
		
		String decimal_total_amount = decFormat.format(total_amount);
		
		model.addAttribute("OrderRowList", OrderRowList);
		model.addAttribute("total_amount", decimal_total_amount);

		return "order/order";
	}
	
	
	@PostMapping("/order")
	public String orderForm(Principal principal, OrderDto order, String tel1, String tel2, String tel3, String payment, String tel4, String tel5, String tel6,String tel7, String tel8, String tel9, String email1, String email2 ) {
		String mid = orderService.getMid(principal.getName());
		//주문에 대한 트랜젝션 - 재고가 없으면 실패
//		Timestamp timesteamp = new Timestamp(System.currentTimeMillis());
//		timesteamp = timesteamp.
	
		LocalTime currentTime = LocalTime.now(); 
//		LocalTime targetTime = LocalTime.of(int hour, int minute, int second, int nanoOfSecond);
		String oid =currentTime.toString();
		order.setMid(mid);
		order.setOid(oid);
		order.setOdate("21/10/01 18:15:17.000000000");
		order.setOrder_tel(tel1+"-"+tel2+"-"+tel3);
		order.setOrecipent_tel(tel4+"-"+tel5+"-"+tel6);
		order.setOaddtional_tel(tel7+"-"+tel8+"-"+tel9);
		order.setOtotal_price(total_amount);
		order.setOrecipent_email(email1+email2);
		logger.info(order.toString());
		
		orderService.makeOrder(OrderRowList, oid, order);
		
		
		//성공시 
		
//		List<OrderRowDetailDto> OrderRowList = orderService.getMyCart(mid);
//		
		
		

		
//		BeanUtils.copyProperties(mid, timesteamp);
		return "redirect:/order/";
	}
	
	
	@RequestMapping("/error/403")
	public String error403() {
		logger.info("실행");
		return "error/403";
	}
	

	
	/*
	 * @GetMapping("/orderList") public String orderList(Model model) {
	 * logger.info("실행");
	 * 
	 * String mid = "M1"; //test List<OrderDto> orders =
	 * orderService.getOrderList(mid);
	 * 
	 * for (OrderDto order : orders) { String OID = order.getOID();
	 * logger.info("oid " + OID); List<OrderItemDto> orderitems =
	 * orderService.getOrderItems(OID); order.setorder(orderitems);
	 * order.setProductKindNum(orderitems.size());
	 * 
	 * logger.info(orderitems.toString()); //1개의 주문 이름 -- 1개의 product name String
	 * PID = orderitems.get(0).getPID(); String pname = orderService.getPname(PID);
	 * order.setMainItem(pname); }
	 * 
	 * model.addAttribute("orderList", orders);
	 * 
	 * return "order/orderList"; }
	 */
}  
