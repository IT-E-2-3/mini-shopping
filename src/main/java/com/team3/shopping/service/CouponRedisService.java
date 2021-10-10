package com.team3.shopping.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.SetOperations;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.team3.shopping.dao.CouponDao;
import com.team3.shopping.dao.EventDao;

@Service
public class CouponRedisService {
	@Autowired
	RedisTemplate<String, Object> redisTemplate;

	@Resource(name="redisTemplate")
	private ValueOperations<String, Object> valueOps;

	@Resource(name="redisTemplate")
	private SetOperations<String, String> setOps;
	
	@Resource
	EventDao eventdao;
	
	@Resource
	CouponDao coupondao;
	
	//시작전 쿠폰 수량 지정
	public void setCoupons() {
		if(!redisTemplate.hasKey("eamount")) {
			int totalEamount = eventdao.getEamount();
			valueOps.set("eamount", totalEamount);
		}
	}
	
	//남아있는 쿠폰 수량 확인
	public int getCouponCounts() {
		return (int) valueOps.get("eamount");
	}
	
	//쿠폰 감소
	public void decreaseCoupon() {
		valueOps.decrement("eamount");
		coupondao.updateCouponAmount("11");
	}
	
	//이미 받아간 사람인지 확인하는 메서드
	public boolean checkCouponMid(String mid, String eid){
		if(redisTemplate.hasKey(mid)){
			if(valueOps.get(mid).equals(eid)) {
				return false;
			}else return true;
		}else {
			return true;
		}
	}
	
	//쿠폰 넣기
	public void insertCoupon(String mid, String eid) {
		valueOps.set(mid, eid);
		decreaseCoupon();
	}
	
}
