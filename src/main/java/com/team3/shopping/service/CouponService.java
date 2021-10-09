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

import org.springframework.stereotype.Service;

@Service
public class CouponService {

	private static final Logger logger = LoggerFactory.getLogger(CouponService.class);

	@Resource
	CouponDao couponDao;
	
	public enum EventTransferResult{
		SUCCESS,
		FAIL,
		FAIL_COUPON_SOLDOUT,
		FAIL_COUPON_ISSUED
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
				try {
					logger.info("coupon.getEid() " + coupon.getEid() );
					int remains = couponDao.selectRemainigCoupon(coupon.getEid());	
					logger.info("remains " + remains);
					if(remains < 1) {
						return EventTransferResult.FAIL_COUPON_SOLDOUT;
					}	
					
					int isIssued = couponDao.selectCheckifCouponissued(coupon.getMid(), coupon.getEid());
					if(isIssued > 0) {
						return EventTransferResult.FAIL_COUPON_ISSUED;
					}
					logger.info("isIssued " + isIssued);
					
					couponDao.updateCouponAmount(coupon.getEid());
					couponDao.insertCoupon(coupon);	
					
					logger.info("updated ? " );
				}catch(Exception e) {
					logger.error(e.getMessage());
					status.setRollbackOnly();	
					return EventTransferResult.FAIL;
				}
				
				return EventTransferResult.SUCCESS;
			}
		});
		
	}
  
  public int getCouponRows(String mid, String eid) {
		return couponDao.getCouponRows(mid, eid);
	}
	
	public List<CouponDto> getCouponList(String mid, String eid){
		return couponDao.getCouponList(mid, eid);
	}
}
