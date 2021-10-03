package com.team3.shopping.dto;

import lombok.Data;

@Data
public class OrderItemDto {
	private String OID;
	   private String PID;
	   private String COLOR_CODE;
	   private String SIZE_CODE;
	   private String OAMOUNT;
	   private String mainImageUrl;
}
