package com.team3.shopping.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.time.LocalTime;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.dto.OrderRowDetailDto;
import com.team3.shopping.service.OrderService;
import com.team3.shopping.validator.OrderFormValidator;

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

	int total_amount = 0;
	List<OrderRowDetailDto> OrderRowList;

	@GetMapping("/")
	public String content(Model model, Principal principal) {
		logger.info("실행");
		total_amount = 0;
		String mid = orderService.getMid(principal.getName());
//		logger.info(mid);

		// cart의 내용 받아오기
		OrderRowList = orderService.getMyCart(mid);

		DecimalFormat decFormat = new DecimalFormat("###,###");
		for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
			int price = Integer.parseInt(orderRowDetailDto.getPprice());
			total_amount += price * orderRowDetailDto.getOamount();
			orderRowDetailDto.setPprice(decFormat.format(price));
		}
//		logger.info(total_amount+" ");

		String decimal_total_amount = decFormat.format(total_amount);

		model.addAttribute("OrderRowList", OrderRowList);
		model.addAttribute("total_amount", decimal_total_amount);

		return "order/order";
	}

	/*
	 * public String orderComplete( @ModelAttribute("orderForm") @Valid OrderDto
	 * order, BindingResult bindingResult) {
	 * 
	 * if(bindingResult.hasErrors()) { logger.info("다시 입력폼 제공 + 에러 메시지"); //forward
	 * return "redirect:/order/"; } else { logger.info("정상 요청 처러후 응답 제공");
	 * //redirect return "redirect:/"; } }
	 */

	@InitBinder("orderForm")
	public void joinFormSetValidator(WebDataBinder binder) {
		logger.info("실행");

		binder.addValidators(new OrderFormValidator());
	}

	@GetMapping(value="order", produces = "application/json'; charset=UTF-8")
	@ResponseBody
	public String orderForm(@ModelAttribute("orderForm") @Valid OrderDto order, Errors errors, Principal principal) {
		logger.info("실행");
		
		if (errors.hasErrors()) {
			logger.info(errors.toString());
			logger.info("다시 입력폼 제공 + 에러 메시지");	
			
			
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("result", "fail");
			String json = jsonObject.toString(); // result : successs
			
			return json;
		}
		
		logger.info(order.toString());

		String mid = orderService.getMid(principal.getName());
		// 주문에 대한 트랜젝션 - 재고가 없으면 실패
		// Timestamp timesteamp = new Timestamp(System.currentTimeMillis());
		// timesteamp = timesteamp.

		LocalTime currentTime = LocalTime.now();
		// LocalTime targetTime = LocalTime.of(int hour, int minute, int second, int
		// nanoOfSecond);
		String oid = currentTime.toString();
		order.setMid(mid);
		order.setOid(oid);
		order.setOdate("21/10/01 18:15:17.000000000");
		order.setOtotal_price(total_amount);

		logger.info(order.toString());
		
		logger.info("성공");
		//orderService.makeOrder(OrderRowList, oid, order);

		// 성공시

		// List<OrderRowDetailDto> OrderRowList = orderService.getMyCart(mid);
		//

		// BeanUtils.copyProperties(mid, timesteamp);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString(); // result : successs
		
		return json;
	}

	@RequestMapping("/error/403")
	public String error403() {
		logger.info("실행");
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
		List<OrderRowDetailDto> orderItems = orderService.getProductInfo(oid);

		model.addAttribute("order", order);
		model.addAttribute("orderItems", orderItems);

		logger.info(order.toString());
		logger.info(orderItems.toString());
		return "order/orderDetail";
	}
}
