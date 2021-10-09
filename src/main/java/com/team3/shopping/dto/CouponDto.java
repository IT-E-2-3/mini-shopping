package com.team3.shopping.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class CouponDto {
	private String mid;
	private String eid;
	private Date coupon_startdate;
	private Date coupon_expiredate;
	private String coupon_type;
	private String coupon_state;	
}
