package com.team3.shopping.service;


import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.OrderDao;
import com.team3.shopping.dto.CartDto;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;

@Service
public class OrderService {
  
  
  	private static final Logger logger = LoggerFactory.getLogger(OrderService.class);
  
  
	@Resource
	OrderDao orderDao;
	
	
	
	public List<CartDto> getMyCart(String mid) {
		 return orderDao.getMyCartByMlogin(mid);
		 
	}

	public List<CartDto> getPrice(List<CartDto> cartList) {
		return orderDao.getPriceByCartPid(cartList);
	}


	public String getMid(String mlogin_id) {
		return orderDao.getMidBymolgin(mlogin_id);
    
  }
    
    public List<OrderDto> getOrderList(String mid) {
	
		List<OrderDto> orders = orderDao.selectAllbyMid(mid);

		return orders;
	}

	public List<OrderItemDto> getOrderItems(String oid) {
	

		List<OrderItemDto> orderItems = orderDao.selectOrderItemsbyOid(oid);

		return orderItems;
	}
	
	public String getPname(String pid) {
	

		String pname = orderDao.selectPnamebyPid(pid);
    		return pname;
  
    
	}





	
}
//