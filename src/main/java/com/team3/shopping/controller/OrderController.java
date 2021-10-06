package com.team3.shopping.controller;

import java.security.Principal;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.team3.shopping.dto.MemberInfoDto;
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
	public String content(Model model, Principal principal, HttpSession session) {
		logger.info("실행");
		total_amount = 0;
		MemberInfoDto member = orderService.getMid(principal.getName());
//		logger.info(mid);

		// cart의 내용 받아오기
//		OrderRowList = orderService.getMyCart(member.getMid());
		
		OrderRowList = (List<OrderRowDetailDto>) session.getAttribute("OrderRowList");
		DecimalFormat decFormat = new DecimalFormat("###,###");
		for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
			int price = (orderRowDetailDto.getPprice());
			total_amount += price * orderRowDetailDto.getOamount();
		
		}
//		logger.info(total_amount+" ");

		String decimal_total_amount = decFormat.format(total_amount);

		model.addAttribute("OrderRowList", OrderRowList);
		model.addAttribute("total_amount", total_amount);
		String mname = member.getMname();
		StringBuilder sb = new StringBuilder();
		sb.append(mname.charAt(0));
		for (int i = 0; i < mname.length()-2; i++) {
			sb.append("*");
		}
		sb.append(mname.charAt(mname.length()-1));
		member.setMname(sb.toString());
		model.addAttribute("member", member);
		


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
	/*
	 * public String orderComplete( @ModelAttribute("orderForm") @Valid OrderDto
	 * order, BindingResult bindingResult) {
	 * 
	 * if(bindingResult.hasErrors()) { logger.info("다시 입력폼 제공 + 에러 메시지"); //forward
	 * return "redirect:/order/"; } else { logger.info("정상 요청 처러후 응답 제공");
	 * //redirect return "redirect:/"; } }
	 */



   @GetMapping(value="order", produces = "application/json'; charset=UTF-8")
   @ResponseBody
   public String orderForm(@ModelAttribute("orderForm") @Valid OrderDto order, Errors errors, Principal principal, HttpSession session) {
      logger.info("실행");
      
      if (errors.hasErrors()) {
         logger.info(errors.toString());
         logger.info("다시 입력폼 제공 + 에러 메시지");   
         
         
         JSONObject jsonObject = new JSONObject();
         jsonObject.put("result", "fail");
         String json = jsonObject.toString(); // result : fail
         
         return json;
      }
      
      logger.info(order.toString());
      logger.info("---------CARD--------");
      logger.info("getOpayment : "+ order.getOpayment());
      logger.info("getOcard_installmentrate : " + order.getOcard_installmentrate());
      logger.info("getOcard_installmentrate_period : "+order.getOcard_installmentrate_period());
      logger.info("getOcard_name :"+order.getOcard_name());
      logger.info("---------CARD--------");
      MemberInfoDto member = orderService.getMid(principal.getName());
//		logger.info(mid);

		// cart의 내용 받아오기
	
      String mid = member.getMid();
      // 주문에 대한 트랜젝션 - 재고가 없으면 실패
      Timestamp timestamp = new Timestamp(System.currentTimeMillis());
      SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
      order.setOdate(sdf.toString());
      
      
      LocalTime currentTime = LocalTime.now();
      // LocalTime targetTime = LocalTime.of(int hour, int minute, int second, int
      // nanoOfSecond);
      String oid = currentTime.toString();
      order.setMid(mid);
      order.setOid(oid);
      
      order.setOtotal_price(total_amount);
      
      session.removeAttribute(oid);
     

      logger.info(order.toString());
      
      logger.info("성공");
      OrderRowList = (List<OrderRowDetailDto>) session.getAttribute("OrderRowList");
      for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
		logger.info("orderRowDetailDto.toString() : "+orderRowDetailDto.toString());
		orderRowDetailDto.setMid(mid);
		logger.info("orderRowDetailDto.toString() : "+orderRowDetailDto.toString());
	}
//		session.removeAttribute("OrderRowList");
      orderService.makeOrder(OrderRowList, oid, order);
      logger.info(order.toString());
      // 성공시

//       List<OrderRowDetailDto> OrderRowList = orderService.getMyCart(mid);
      //

      // BeanUtils.copyProperties(mid, timesteamp);
      
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("result", "success");
      session.setAttribute("order", order);
      String json = jsonObject.toString(); // result : successs
      
      return json;
   }

   

   


   

	@RequestMapping("/ordersuccess")
	public String ordersuccess(Model model, HttpSession session) {
		logger.info("실행");
		OrderDto order= (OrderDto) session.getAttribute("order");
		session.removeAttribute("order");
		String oid = order.getOid();
//		OrderDto order = (OrderDto) orderService.getOrder(oid);
		List<OrderRowDetailDto> orderItems = orderService.getProductInfo(oid);

		model.addAttribute("order", order);
		model.addAttribute("orderItems", orderItems);
		
		
		logger.info(orderItems.toString());
		
		long cardCost = (order.getOtotal_price())/(Integer.parseInt(order.getOcard_installmentrate_period()) )*(100-Integer.parseInt(order.getOcard_installmentrate()) );
		model.addAttribute("cardCost", orderItems);
		
		//odate를 기반으로 2일 후까지 입금시켜야 하는 입금기한을 주려고 했으나 실패
//		Timestamp ts= Timestamp.valueOf(order.getOdate());
//		Calendar cal = Calendar.getInstance();
//		cal.setTime(ts);
//		cal.add(Calendar.DATE, 2);
//		ts.setTime(cal.getTime().getTime());
//		
//		 SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
//	      order.setOdate(sdf.toString());
	      
		
//		Date date = Date.valueOf(order.getOdate());
//		model.addAttribute("deadline", date.toString());
		return "order/orderSuccess";
	}
   
   @RequestMapping("/error/403")
   public String error403() {
      logger.info("실행");
      return "error/403";
   }

   @RequestMapping("/orderList")
   public String orderList(Model model, Principal principal) {
      logger.info("실행");
      MemberInfoDto member = orderService.getMid(principal.getName());

      String mid = member.getMid();
//      String mid = "M1"; // test
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




