package com.team3.shopping.controller;

import java.security.Principal;
import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.team3.shopping.dto.CartDto;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/order")
@SessionAttributes({ "inputForm" })
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	/*
	 * principal 로그인아이디 알기위해 사용
	 */

	@Resource
	OrderService orderService;

	@GetMapping("/")
	public String content(Model model, Principal principal) {
		logger.info("실행");

		String mid = orderService.getMid(principal.getName());
		logger.info(mid);

		// cart의 내용 받아오기
		List<CartDto> cartList = orderService.getMyCart(mid);

//		List<CartDto> cartList2 = orderService.getPrice(cartList);
		// cart 에서 받아온 list 사용하여 화면에 JSP 표시
		// pid,color_code로 상품정보 받아오기
//		logger.info(cartList2.get(0).toString());
		model.addAttribute("cartList", cartList);

		return "order/order";
	}

	@PostMapping("/order")
	public String orderForm(Principal principal, OrderDto order, String tel1, String tel2, String tel3, String payment,
			String tel4, String tel5, String tel6) {
		String mid = orderService.getMid(principal.getName());
		order.setMid(mid);
		Timestamp timesteamp = new Timestamp(System.currentTimeMillis());
		order.setOid(timesteamp.toString());
		order.setOdate(timesteamp.toString());
		order.setOrecipent_tel(tel4 + "-" + tel5 + "-" + tel6);
		logger.info(order.toString());
		logger.info(tel1);
		logger.info(tel2);
		logger.info(tel3);
		logger.info(tel4);
		logger.info(tel5);
		logger.info(tel6);

		BeanUtils.copyProperties(mid, timesteamp);
		return "redirect:/order/";
	}

	@RequestMapping("/error/403")
	public String error403() {
		logger.info("�떎�뻾");
		return "error/403";
	}

	@RequestMapping("/orderList")
	public String orderList(Model model) {
		logger.info("실행");

		String mid = "M1"; // test
		List<OrderDto> orders = orderService.getOrderList(mid);

		for (OrderDto order : orders) {
			String OID = order.getOid();
			logger.info("oid " + OID);
			List<OrderItemDto> orderitems = orderService.getOrderItems(OID);
			order.setOrderItems(orderitems);
			order.setProductKindNum(orderitems.size());

			logger.info(orderitems.toString());
			// 1개의 주문 이름 -- 1개의 product name
			String PID = orderitems.get(0).getPid();
			String pname = orderService.getPname(PID);
			logger.info("pname " + pname);
			order.setMainItem(pname);
		}

		model.addAttribute("orderList", orders);

		return "order/orderList";
	}

	@GetMapping("/orderDetail")
	public String orderDetail(@RequestParam String oid, Model model, HttpSession session) {
		logger.info("실행");
		OrderDto order = (OrderDto) orderService.getOrder(oid);
		List<OrderItemDto> orderItems =  orderService.getOrderItems(oid);
		
		for (OrderItemDto orderItem : orderItems) {
			//main url 구하기
			String pid =orderItem.getPid();
			String pcolor = orderItem.getColor_code();
			String imgurl =  orderService.getImageUrl(pid, pcolor);
			orderItem.setMainimageurl(imgurl);
		}
		
		model.addAttribute("order", order);
		model.addAttribute("orderItems", orderItems);
		
		logger.info(order.toString());
		return "order/orderDetail";
	}
}
