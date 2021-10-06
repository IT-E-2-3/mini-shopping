package com.team3.shopping.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.CartDao;
import com.team3.shopping.dto.CartDto;

@Service
public class CartService {
	@Resource
	CartDao cartdao;
	
	public void insertProduct(CartDto cart) {
		cartdao.insertProduct(cart);
	}

	public int checkCart(CartDto cart) {
		return cartdao.checkCart(cart);
	}

	public void updateProductCamount(CartDto cart) {
		cartdao.updateCount(cart);
	}
}
