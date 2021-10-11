package com.team3.shopping.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.SetOperations;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.team3.shopping.controller.EventController;
import com.team3.shopping.dao.CouponDao;
import com.team3.shopping.dao.EventDao;

@Service
//@EnableCaching
public class CouponRedisService {
	private static final Logger logger = LoggerFactory.getLogger(CouponRedisService.class);

	@Autowired
	RedisTemplate<String, Object> redisTemplate;

	@Resource(name = "redisTemplate")
	private ValueOperations<String, Object> valueOps;

	@Resource(name = "redisTemplate")
	private SetOperations<String, String> setOps;

	@Resource
	EventDao eventdao;

	@Resource
	CouponDao coupondao;

	// 시작전 쿠폰 수량 지정
//	@CacheEvict(value="eamount")
	public void setCouponAmount(Integer amount) {
		logger.info("couponredis 0장 만들기");

		valueOps.set("eamount", amount);
	}

	/*
	 * @CacheEvict(value = "eamount") public void clearCouponAmount() { }
	 */

	// 남아있는 쿠폰 수량 확인
	@Cacheable(cacheNames = "eamount")
	public int getCouponCounts(int eamount) {
		if (eamount == 1) {
			logger.info(valueOps.get("eamount") + "남은수량");
			return (int) valueOps.get("eamount");
		} else {
			return (int) valueOps.get("eamount");
		}

	}

	// 이미 받아간 사람인지 확인하는 메서드
	/*
	 * { eid: [mid1 , mid2, mid3, ...] }
	 * 
	 */
//	@Cacheable(value = "checkmid")
	public boolean checkCouponMid(String mid, String eid) {

		if (setOps.isMember(eid, mid)) {
			return true;
		}
		return false;
	}

	// 회원에게 쿠폰을 나눠준 이력
	public void insertCoupon(String mid, String eid) {
		logger.info("give coupon");
		setOps.add(eid, mid);
	}

}
