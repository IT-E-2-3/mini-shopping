package com.team3.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team3.shopping.dto.CartDto;

@Mapper
public interface OrderDao {

	public List<CartDto> getMyCartByMlogin(String mid);

	public String getMidBymolgin(String mlogin_id);

	public List<CartDto> getPriceByCartPid(List<CartDto> cartList);
	
}
