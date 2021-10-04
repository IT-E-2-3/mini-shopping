package com.team3.shopping.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.shopping.dto.OrderRowDetailDto;
import com.team3.shopping.service.OrderService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	
	@Resource
	OrderService orderService;
	
	int total_amount =0;
	List<OrderRowDetailDto> OrderRowList;
	
	@RequestMapping("/")
	public String cart(Model model, Principal principal) {
		
		total_amount = 0;
		String mid = orderService.getMid(principal.getName());
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
		
		
		return "cart/cart";
	}
	
	@RequestMapping("/2")
	public String cart2(Model model, Principal principal) {
		
		total_amount = 0;
		String mid = orderService.getMid(principal.getName());
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
