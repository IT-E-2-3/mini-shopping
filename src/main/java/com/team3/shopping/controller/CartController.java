package com.team3.shopping.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.util.List;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team3.shopping.dto.CartDto;
import com.team3.shopping.dto.MemberInfoDto;
import com.team3.shopping.dto.OrderRowDetailDto;
import com.team3.shopping.service.CartService;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Resource
	OrderService orderService;
	
	@Resource
	CartService cartService;
	
	int total_amount =0;
	List<OrderRowDetailDto> OrderRowList;
	
	@GetMapping(value="/insert", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String insertProduct(@ModelAttribute CartDto cart, Principal principal) {
		MemberInfoDto member = orderService.getMid(principal.getName());
		String mid = member.getMid();
		cart.setMid(mid);
//		logger.info(cart.toString());
		
		int chkcart = cartService.checkCart(cart);
		if(chkcart == 0) {
			cartService.insertProduct(cart);
			logger.info("같은 제품이 없습니다.");
		}else {
			cartService.updateProductCamount(cart);
			logger.info("같은 제품이 있어서 수량을 증가시켰습니다.");
		}
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("result", "success");
		String json = jsonObj.toString();
		return json;
	}
	
	@RequestMapping("/")
	public String cart(Model model, Principal principal) {
		
		total_amount = 0;
		 MemberInfoDto member = orderService.getMid(principal.getName());
//			logger.info(mid);

			// cart의 내용 받아오기
		
	      String mid = member.getMid();//		logger.info(mid);
		
		//cart의 내용 받아오기
		OrderRowList = orderService.getMyCart(mid);
		
		DecimalFormat decFormat = new DecimalFormat("###,###");
		for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
			int price = (orderRowDetailDto.getPprice());
			total_amount += price*orderRowDetailDto.getOamount();
			
		}
//		logger.info(total_amount+" ");
		
		String decimal_total_amount = decFormat.format(total_amount);
		
		model.addAttribute("OrderRowList", OrderRowList);
		model.addAttribute("total_amount", decimal_total_amount);
		
		
		return "cart/cart";
	}
	
	@RequestMapping("/2")
	public String cart2(Model model, Principal principal) {
		
		total_amount = 0;
		 MemberInfoDto member = orderService.getMid(principal.getName());
//			logger.info(mid);

			// cart의 내용 받아오기
		
	      String mid = member.getMid();
//		logger.info(mid);
		
		//cart의 내용 받아오기
		OrderRowList = orderService.getMyCart(mid);
		
		DecimalFormat decFormat = new DecimalFormat("###,###");
		for (OrderRowDetailDto orderRowDetailDto : OrderRowList) {
			int price = (orderRowDetailDto.getPprice());
			total_amount += price*orderRowDetailDto.getOamount();
			
		}
//		logger.info(total_amount+" ");
		
		String decimal_total_amount = decFormat.format(total_amount);
		
		model.addAttribute("OrderRowList", OrderRowList);
		model.addAttribute("total_amount", decimal_total_amount);
		
		
		return "cart/cart2";
	}
}
