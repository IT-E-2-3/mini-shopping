package com.team3.shopping.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.team3.shopping.dto.CouponDto;

@Mapper
public interface CouponDao {
  
	public int selectRemainigCoupon(String eid);
	public int selectCheckifCouponissued(@Param("mid") String mid, @Param("eid") String eid);
	public void insertCoupon(CouponDto couponDto);
	public int updateCouponAmount(String eid);
	public Date selectEventStartTIme(String eid);
	public int getCouponRows(@Param("mid") String mid, @Param("eid") String eid);
	public List<CouponDto> getCouponList(@Param("mid") String mid, @Param("eid") String eid);
  
}
