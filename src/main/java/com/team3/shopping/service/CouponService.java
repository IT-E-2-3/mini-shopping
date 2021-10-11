package com.team3.shopping.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.team3.shopping.dao.CouponDao;
import com.team3.shopping.dto.CouponDto;
import com.team3.shopping.dto.OrderDto;
import com.team3.shopping.dto.OrderRowDetailDto;
import com.team3.shopping.exception.ProductSoldOutException;
import com.team3.shopping.test.RedisCompo;

import org.springframework.stereotype.Service;

@Service
public class CouponService {

	private static final Logger logger = LoggerFactory.getLogger(CouponService.class);

	@Resource
	CouponDao couponDao;

	@Resource
	CouponRedisService redisservice;
	

	 
	public enum EventTransferResult {
		SUCCESS, FAIL, FAIL_COUPON_SOLDOUT, FAIL_COUPON_ISSUED
	}

	public Date getEventStartTime(String eid) {
		return couponDao.selectEventStartTIme(eid);
	}

	@Resource
	private TransactionTemplate transactionTemplate;

	public EventTransferResult issueCoupon(CouponDto coupon) {
		logger.info("실행");

		return transactionTemplate.execute(new TransactionCallback<EventTransferResult>() {

			@Override
			public EventTransferResult doInTransaction(TransactionStatus status) {
				logger.info("실행");
				logger.info("___________________________트렌젝션____________________________");
				try {
					logger.info("coupon.getEid() " + coupon.getEid());
					///오라클에서 가져오기
					int remains = couponDao.selectRemainigCoupon(coupon.getEid());
					logger.info("remains " + remains);
					//레디스의 쿠폰 수량 오라클의 남은 쿠폰 조회하여 변경
					if (remains < 1) {
						logger.info("수량 0으로 맞춤");
						redisservice.setCouponAmount(0);
						//캐시를 초기화 시키기 
//						redisservice.clearCouponAmount();
						
						return EventTransferResult.FAIL_COUPON_SOLDOUT;
					}
					// 중복참여를 레디스에 기록
					int isIssued = couponDao.selectCheckifCouponissued(coupon.getMid(), coupon.getEid());
					if (isIssued > 0) {
						return EventTransferResult.FAIL_COUPON_ISSUED;
					}
					// 중복참여를 레디스에 기록
					redisservice.insertCoupon(coupon.getMid(), coupon.getEid());
					logger.info("isIssued " + isIssued);

					couponDao.updateCouponAmount(coupon.getEid());
					couponDao.insertCoupon(coupon);
					
					logger.info("updated ? ");
				} catch (Exception e) {
					logger.error(e.getMessage());
					status.setRollbackOnly();
					// 캐시 저장
					return EventTransferResult.FAIL;
				}

				return EventTransferResult.SUCCESS;
			}
		});

	}

	public List<CouponDto> getCouponList(String mid) {
		return couponDao.getCouponList(mid);
	}

	public void insertCoupon(CouponDto coupon) {
		couponDao.insertCoupon(coupon);
	}
}
