package com.team3.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.dto.CartDto;

@Mapper
public interface OrderDao {

	public List<CartDto> getMyCartByMlogin(String mid);

	public String getMidBymolgin(String mlogin_id);

  public List<CartDto> getPriceByCartPid(List<CartDto> cartList);
  public List<OrderDto> selectAllbyMid(String mid);
  public Integer selectOrderAmount();
  public List<OrderItemDto> selectOrderItemsbyOid(String oid);
  public String selectPnamebyPid(String pid);
}

