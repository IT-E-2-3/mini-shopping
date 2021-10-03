package com.team3.shopping.service;

import java.security.Principal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.OrderDao;
import com.team3.shopping.dto.CartDto;

@Service
public class OrderService {
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






}
//