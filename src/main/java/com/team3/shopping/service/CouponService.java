package com.team3.shopping.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.CouponDao;
import com.team3.shopping.dto.CouponDto;

@Service
public class CouponService {
	
	@Resource
	CouponDao coupondao;
	
	public int getCouponRows(String mid, String eid) {
		return coupondao.getCouponRows(mid, eid);
	}
	
	public List<CouponDto> getCouponList(String mid, String eid){
		return coupondao.getCouponList(mid, eid);
	}
}
