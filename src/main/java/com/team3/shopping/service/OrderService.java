package com.team3.shopping.service;


import java.security.Principal;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team3.shopping.dao.OrderDao;
import com.team3.shopping.dto.CartDto;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderItemDto;
import com.team3.shopping.dto.OrderRowDetailDto;
import com.team3.shopping.exception.ProductSoldOutException;

@Service
public class OrderService {
  
  
  	private static final Logger logger = LoggerFactory.getLogger(OrderService.class);
  
  
	@Resource
	OrderDao orderDao;
	
	
	
	public List<OrderRowDetailDto> getMyCart(String mid) {
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
	@Transactional
	public void makeOrder(List<OrderRowDetailDto> orderRowList, String oid, OrderDto order) {
		//mid 의 cart에 있는 모든 주문에 대해서 재고를 얻어오고 재고에서 camount 뺀다
		//음수면 바로 재고없음 ->  throw new Ch16NotFoundAccountException("계좌가 존재하지 않습니다.");
		//음수가 아니면 트렌젝션 실행
//		List<Integer> stock = new LinkedList<Integer>();
//		List<Integer> camount = new LinkedList<Integer>();
		//주문생성
		orderDao.insertOrderByForm(order);
		
		for (OrderRowDetailDto orderRowDetailDto : orderRowList) {
			//재고 조회
			int stock = orderDao.selectStockByPidColor(orderRowDetailDto);
			// 장바구니 조회
			int amount = orderDao.selectAmountByPidColor(orderRowDetailDto);
			
			int stock_after = stock-amount;
			if(stock_after<0) {
				throw new ProductSoldOutException("상품 재고 소진");
			}
		
			//재고 변경 객체와 인자를 동시에 보내는 코드 적용
			orderDao.updateStock(orderRowDetailDto, stock_after);
			// 장바구니 변경
			
			
			
			orderDao.DeleteProductFromCart(orderRowDetailDto);
			//장바구니의 (사실은 orderRowList)의 모든 상품을 order_items 테이블로 이동
			orderDao.intertOrderItems(orderRowDetailDto, oid);
			
			
		}
		
	}

	private int orderDaoselectStockByPidColor(OrderRowDetailDto orderRowDetailDto) {
		// TODO Auto-generated method stub
		return 0;
	}





	
}
//