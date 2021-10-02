package com.team3.shopping.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderDto {
	private String OID;
	private String MID;
	private String ODATE;
	private Integer OZIP_CODE;
	private String OADDRESS;
	private String ORECIPIENT;
	private String ORECIPIENT_TEL;
	private Integer OTOTAL_PRICE;
	private String OCHANNEL;
	private String OCARD_NAME;
	private Integer OCARD_INSTALLMENTRATE;
	private Integer OCARD_INSTALLMENT_PERIOD;
	private String OACCOUNTHOLDER;
	private String ODEPOSIT_DEADLINE;
	private List<OrderItemDto> orderItems;
	private String mainItem;
	private Integer productKindNum;
}	
